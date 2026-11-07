.class public Lorg/osmdroid/views/overlay/MinimapOverlay;
.super Lorg/osmdroid/views/overlay/TilesOverlay;
.source "MinimapOverlay.java"


# instance fields
.field private mHeight:I

.field private mPadding:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private mZoomDifference:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 91
    new-instance v0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;

    invoke-direct {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/MinimapOverlay;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 1

    const/4 v0, 0x3

    .line 79
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/overlay/MinimapOverlay;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p3, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V

    const/16 p3, 0x64

    .line 30
    iput p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    .line 31
    iput p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    const/16 p3, 0xa

    .line 32
    iput p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    .line 49
    invoke-virtual {p0, p4}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setZoomDifference(I)V

    .line 51
    iget-object p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p3}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileRequestCompleteHandlers()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getLoadingBackgroundColor()I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setLoadingLineColor(I)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 58
    iget p2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    iput p2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    .line 59
    iget p2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    const p2, -0x777778

    .line 62
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 64
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private contains(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 201
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 8

    .line 108
    invoke-virtual/range {p0 .. p2}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setViewPort(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 113
    invoke-virtual {p2, p1, v2, v7}, Lorg/osmdroid/views/Projection;->save(Landroid/graphics/Canvas;ZZ)V

    .line 115
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    .line 116
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 114
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 118
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v3

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mViewPort:Lorg/osmdroid/util/RectL;

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;DLorg/osmdroid/util/RectL;)V

    .line 119
    invoke-virtual {p2, p1, v7}, Lorg/osmdroid/views/Projection;->restore(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 179
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    .line 197
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 161
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    return v0
.end method

.method public getZoomDifference()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mZoomDifference:I

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/MinimapOverlay;->contains(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/MinimapOverlay;->contains(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/MinimapOverlay;->contains(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setHeight(I)V
    .locals 0

    .line 170
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .line 188
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-void
.end method

.method protected setViewPort(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)Z
    .locals 6

    .line 207
    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getZoomDifference()I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    .line 208
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMinimumZoomLevel()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 213
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v3

    sub-int/2addr p1, v3

    .line 214
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v5

    add-int/2addr v5, p1

    invoke-direct {v3, v2, p1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v3}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setCanvasRect(Landroid/graphics/Rect;)V

    .line 215
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lorg/osmdroid/views/Projection;->getOffspring(DLandroid/graphics/Rect;)Lorg/osmdroid/views/Projection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setProjection(Lorg/osmdroid/views/Projection;)V

    .line 216
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p1

    iget-object p2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mViewPort:Lorg/osmdroid/util/RectL;

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/Projection;->getMercatorViewPort(Lorg/osmdroid/util/RectL;)Lorg/osmdroid/util/RectL;

    const/4 p1, 0x1

    return p1
.end method

.method public setWidth(I)V
    .locals 0

    .line 152
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    return-void
.end method

.method public setZoomDifference(I)V
    .locals 0

    .line 103
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mZoomDifference:I

    return-void
.end method
