.class public Lorg/osmdroid/views/overlay/GroundOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "GroundOverlay.java"


# instance fields
.field private mBearing:F

.field private mBottomLeft:Lorg/osmdroid/util/GeoPoint;

.field private mBottomRight:Lorg/osmdroid/util/GeoPoint;

.field private mImage:Landroid/graphics/Bitmap;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mMatrixDst:[F

.field private mMatrixSrc:[F

.field private final mPaint:Landroid/graphics/Paint;

.field private mTopLeft:Lorg/osmdroid/util/GeoPoint;

.field private mTopRight:Lorg/osmdroid/util/GeoPoint;

.field private mTransparency:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mPaint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBearing:F

    .line 41
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/GroundOverlay;->setTransparency(F)V

    return-void
.end method

.method private computeMatrix(Lorg/osmdroid/views/Projection;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 123
    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    if-nez v2, :cond_0

    .line 124
    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v2

    .line 125
    iget-object v4, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v4

    .line 126
    iget-object v6, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v6

    .line 127
    iget-object v8, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v8

    sub-long/2addr v6, v2

    long-to-float v1, v6

    sub-long/2addr v8, v4

    long-to-float v6, v8

    .line 130
    iget-object v7, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v1, v7

    .line 131
    iget-object v7, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 132
    iget-object v7, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v1, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 133
    iget-object v1, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrix:Landroid/graphics/Matrix;

    long-to-float v2, v2

    long-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    .line 137
    :cond_0
    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixSrc:[F

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-nez v2, :cond_1

    .line 138
    new-array v2, v11, [F

    iput-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixSrc:[F

    .line 139
    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 140
    iget-object v12, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 141
    iget-object v13, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixSrc:[F

    const/4 v14, 0x0

    aput v14, v13, v10

    .line 142
    aput v14, v13, v9

    int-to-float v2, v2

    .line 143
    aput v2, v13, v8

    .line 144
    aput v14, v13, v7

    .line 145
    aput v2, v13, v6

    int-to-float v2, v12

    .line 146
    aput v2, v13, v5

    .line 147
    aput v14, v13, v4

    .line 148
    aput v2, v13, v3

    .line 150
    :cond_1
    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixDst:[F

    if-nez v2, :cond_2

    .line 151
    new-array v2, v11, [F

    iput-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixDst:[F

    .line 153
    :cond_2
    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v11

    .line 154
    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v13

    .line 155
    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    const/4 v15, 0x7

    const/16 v16, 0x6

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v2

    .line 156
    iget-object v4, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    const/16 v17, 0x5

    const/16 v18, 0x4

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v4

    .line 157
    iget-object v6, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    const/16 v19, 0x3

    const/16 v20, 0x2

    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v6

    .line 158
    iget-object v8, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v8

    .line 159
    iget-object v10, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v23, v8

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v8

    .line 160
    iget-object v10, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v25, v8

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v8

    .line 161
    iget-object v1, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixDst:[F

    long-to-float v10, v11

    aput v10, v1, v22

    long-to-float v10, v13

    .line 162
    aput v10, v1, v21

    long-to-float v2, v2

    .line 163
    aput v2, v1, v20

    long-to-float v2, v4

    .line 164
    aput v2, v1, v19

    long-to-float v2, v6

    .line 165
    aput v2, v1, v18

    move-wide/from16 v2, v23

    long-to-float v2, v2

    .line 166
    aput v2, v1, v17

    move-wide/from16 v2, v25

    long-to-float v2, v2

    .line 167
    aput v2, v1, v16

    long-to-float v2, v8

    .line 168
    aput v2, v1, v15

    .line 170
    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixSrc:[F

    const/16 v31, 0x0

    const/16 v32, 0x4

    const/16 v29, 0x0

    move-object/from16 v30, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/GroundOverlay;->computeMatrix(Lorg/osmdroid/views/Projection;)V

    .line 92
    iget-object p2, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBearing()F
    .locals 1

    .line 58
    iget v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBearing:F

    return v0
.end method

.method public getBottomLeft()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getBottomRight()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTopLeft()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getTopRight()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    .line 67
    iget v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTransparency:F

    return v0
.end method

.method public setBearing(F)V
    .locals 0

    .line 54
    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBearing:F

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixSrc:[F

    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)V
    .locals 11

    .line 108
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixSrc:[F

    .line 110
    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixDst:[F

    .line 111
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    .line 112
    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    .line 113
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p2}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    .line 114
    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    .line 115
    new-instance v2, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    .line 116
    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v9

    invoke-direct/range {v2 .. v10}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v2, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBounds:Lorg/osmdroid/util/BoundingBox;

    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)V
    .locals 10

    .line 97
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 98
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    .line 99
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p2}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    .line 100
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p3}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    .line 101
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    .line 102
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    .line 103
    invoke-virtual {p3}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBounds:Lorg/osmdroid/util/BoundingBox;

    return-void
.end method

.method public setTransparency(F)V
    .locals 2

    .line 62
    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTransparency:F

    .line 63
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    rsub-int p1, p1, 0xff

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
