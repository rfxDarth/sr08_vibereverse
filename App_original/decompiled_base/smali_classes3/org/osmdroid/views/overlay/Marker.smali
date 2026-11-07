.class public Lorg/osmdroid/views/overlay/Marker;
.super Lorg/osmdroid/views/overlay/OverlayWithIW;
.source "Marker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;,
        Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;
    }
.end annotation


# static fields
.field public static final ANCHOR_BOTTOM:F = 1.0f

.field public static final ANCHOR_CENTER:F = 0.5f

.field public static final ANCHOR_LEFT:F = 0.0f

.field public static final ANCHOR_RIGHT:F = 1.0f

.field public static final ANCHOR_TOP:F


# instance fields
.field protected mAlpha:F

.field protected mAnchorU:F

.field protected mAnchorV:F

.field protected mBearing:F

.field private mDisplayed:Z

.field protected mDragOffsetY:F

.field protected mDraggable:Z

.field protected mFlat:Z

.field protected mIWAnchorU:F

.field protected mIWAnchorV:F

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mImage:Landroid/graphics/drawable/Drawable;

.field protected mIsDragged:Z

.field private mMapViewRepository:Lorg/osmdroid/views/MapViewRepository;

.field protected mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

.field protected mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

.field private final mOrientedMarkerRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field protected mPanToView:Z

.field protected mPosition:Lorg/osmdroid/util/GeoPoint;

.field protected mPositionPixels:Landroid/graphics/Point;

.field private final mRect:Landroid/graphics/Rect;

.field protected mResources:Landroid/content/res/Resources;

.field protected mTextLabelBackgroundColor:I

.field protected mTextLabelFontSize:I

.field protected mTextLabelForegroundColor:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 1

    .line 93
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;-><init>()V

    const/4 p2, -0x1

    .line 49
    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    const/high16 p2, -0x1000000

    .line 50
    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    const/16 p2, 0x18

    .line 51
    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    .line 88
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/Marker;->mRect:Landroid/graphics/Rect;

    .line 89
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/Marker;->mOrientedMarkerRect:Landroid/graphics/Rect;

    .line 98
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getRepository()Lorg/osmdroid/views/MapViewRepository;

    move-result-object p2

    iput-object p2, p0, Lorg/osmdroid/views/overlay/Marker;->mMapViewRepository:Lorg/osmdroid/views/MapViewRepository;

    .line 99
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mResources:Landroid/content/res/Resources;

    const/4 p1, 0x0

    .line 100
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 101
    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    .line 102
    new-instance p2, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    const/high16 p2, 0x3f000000    # 0.5f

    .line 103
    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    .line 104
    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    .line 105
    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorU:F

    .line 106
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorV:F

    const/4 p2, 0x0

    .line 107
    iput-boolean p2, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    .line 108
    iput-boolean p2, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    .line 109
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPanToView:Z

    .line 111
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mDragOffsetY:F

    .line 112
    iput-boolean p2, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    .line 114
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    .line 115
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->setDefaultIcon()V

    .line 116
    iget-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mMapViewRepository:Lorg/osmdroid/views/MapViewRepository;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapViewRepository;->getDefaultMarkerInfoWindow()Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/Marker;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;)V

    return-void
.end method

.method public static cleanDefaults()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_1

    .line 348
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 351
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    invoke-virtual {p2, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 353
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    if-eqz v0, :cond_2

    iget p2, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    neg-float p2, p2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result p2

    neg-float p2, p2

    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    sub-float/2addr p2, v0

    .line 354
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/osmdroid/views/overlay/Marker;->drawAt(Landroid/graphics/Canvas;IIF)V

    .line 355
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->isInfoWindowShown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 357
    iget-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->draw()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected drawAt(Landroid/graphics/Canvas;IIF)V
    .locals 11

    .line 557
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 558
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v2, v0

    .line 559
    iget v3, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v3, v1

    .line 560
    iget v4, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v3, p3, v3

    .line 561
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Marker;->mRect:Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 562
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Marker;->mRect:Landroid/graphics/Rect;

    float-to-double v8, p4

    iget-object v10, p0, Lorg/osmdroid/views/overlay/Marker;->mOrientedMarkerRect:Landroid/graphics/Rect;

    move v6, p2

    move v7, p3

    invoke-static/range {v5 .. v10}, Lorg/osmdroid/util/RectL;->getBounds(Landroid/graphics/Rect;IIDLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 563
    iget-object p2, p0, Lorg/osmdroid/views/overlay/Marker;->mOrientedMarkerRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/osmdroid/views/overlay/Marker;->mDisplayed:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    iget p2, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    cmpl-float p2, p4, p3

    if-eqz p2, :cond_2

    .line 571
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float p3, v6

    int-to-float v0, v7

    .line 572
    invoke-virtual {p1, p4, p3, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 590
    :cond_2
    iget-object p3, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    iget p4, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p4, p4, v0

    float-to-int p4, p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 591
    iget-object p3, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Lorg/osmdroid/views/overlay/Marker;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 592
    iget-object p3, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_3

    .line 595
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 227
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    return v0
.end method

.method public getDragOffset()F
    .locals 1

    .line 290
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDragOffsetY:F

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .line 196
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    return v0
.end method

.method public getTextLabelBackgroundColor()I
    .locals 1

    .line 491
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    return v0
.end method

.method public getTextLabelFontSize()I
    .locals 1

    .line 531
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    return v0
.end method

.method public getTextLabelForegroundColor()I
    .locals 1

    .line 511
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    return v0
.end method

.method public hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1

    .line 396
    iget-object p2, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/osmdroid/views/overlay/Marker;->mDisplayed:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/osmdroid/views/overlay/Marker;->mOrientedMarkerRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDisplayed()Z
    .locals 1

    .line 548
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDisplayed:Z

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 2

    .line 337
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    instance-of v0, v0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    check-cast v0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->getMarkerReference()Lorg/osmdroid/views/overlay/Marker;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 341
    :cond_1
    invoke-super {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->isInfoWindowOpen()Z

    move-result v0

    return v0
.end method

.method public moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 3

    .line 413
    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDragOffsetY:F

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 414
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {v1, v2, p1}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 416
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 3

    .line 366
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->asyncRecycle(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 368
    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/Marker;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lorg/osmdroid/tileprovider/BitmapPool;->asyncRecycle(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    .line 371
    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    .line 372
    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mResources:Landroid/content/res/Resources;

    .line 373
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setRelatedObject(Ljava/lang/Object;)V

    .line 374
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->isInfoWindowShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->closeInfoWindow()V

    .line 378
    :cond_0
    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mMapViewRepository:Lorg/osmdroid/views/MapViewRepository;

    .line 379
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;)V

    .line 380
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->onDestroy()V

    .line 383
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->onDetach(Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2

    .line 421
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 425
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    .line 426
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->closeInfoWindow()V

    .line 427
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    if-eqz v1, :cond_0

    .line 428
    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;->onMarkerDragStart(Lorg/osmdroid/views/overlay/Marker;)V

    .line 429
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    :cond_1
    return v0
.end method

.method protected onMarkerClickDefault(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z
    .locals 1

    .line 478
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->showInfoWindow()V

    .line 479
    iget-boolean v0, p1, Lorg/osmdroid/views/overlay/Marker;->mPanToView:Z

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p2

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    .line 401
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 403
    iget-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    if-nez p1, :cond_0

    .line 404
    invoke-virtual {p0, p0, p2}, Lorg/osmdroid/views/overlay/Marker;->onMarkerClickDefault(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z

    move-result p1

    return p1

    .line 406
    :cond_0
    invoke-interface {p1, p0, p2}, Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;->onMarkerClick(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z

    move-result p1

    :cond_1
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4

    .line 437
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    if-eqz v0, :cond_3

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 439
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    .line 440
    iget-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    if-eqz p1, :cond_0

    .line 441
    invoke-interface {p1, p0}, Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;->onMarkerDragEnd(Lorg/osmdroid/views/overlay/Marker;)V

    :cond_0
    return v2

    .line 443
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 444
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 445
    iget-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    if-eqz p1, :cond_2

    .line 446
    invoke-interface {p1, p0}, Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;->onMarkerDrag(Lorg/osmdroid/views/overlay/Marker;)V

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public remove(Lorg/osmdroid/views/MapView;)V
    .locals 0

    .line 254
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 223
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    return-void
.end method

.method public setAnchor(FF)V
    .locals 0

    .line 213
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    .line 214
    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    return-void
.end method

.method public setDefaultIcon()V
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mMapViewRepository:Lorg/osmdroid/views/MapViewRepository;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapViewRepository;->getDefaultMarkerIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 143
    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    return-void
.end method

.method public setDragOffset(F)V
    .locals 0

    .line 283
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mDragOffsetY:F

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    return-void
.end method

.method public setFlat(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 132
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->setDefaultIcon()V

    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    return-void
.end method

.method public setInfoWindowAnchor(FF)V
    .locals 0

    .line 218
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorU:F

    .line 219
    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorV:F

    return-void
.end method

.method public setOnMarkerClickListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    return-void
.end method

.method public setOnMarkerDragListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    return-void
.end method

.method public setPanToView(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Marker;->mPanToView:Z

    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;)V
    .locals 10

    .line 187
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->clone()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    .line 188
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->closeInfoWindow()V

    .line 190
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->showInfoWindow()V

    .line 192
    :cond_0
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mBounds:Lorg/osmdroid/util/BoundingBox;

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 205
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    return-void
.end method

.method public setTextIcon(Ljava/lang/String;)V
    .locals 7

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 151
    iget v1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 153
    iget v2, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 154
    iget v2, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    .line 155
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 157
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 158
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 159
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v4, v4

    .line 160
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v5

    add-float/2addr v5, v4

    add-float/2addr v5, v3

    float-to-int v5, v5

    .line 161
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 162
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 164
    invoke-virtual {v5, p1, v0, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 165
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mResources:Landroid/content/res/Resources;

    invoke-direct {p1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 166
    invoke-virtual {p0, v3, v3}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    return-void
.end method

.method public setTextLabelBackgroundColor(I)V
    .locals 0

    .line 501
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    return-void
.end method

.method public setTextLabelFontSize(I)V
    .locals 0

    .line 541
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    return-void
.end method

.method public setTextLabelForegroundColor(I)V
    .locals 0

    .line 521
    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 456
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/Marker;->setAlpha(F)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 457
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/Marker;->setAlpha(F)V

    return-void
.end method

.method public showInfoWindow()V
    .locals 17

    move-object/from16 v0, p0

    .line 316
    iget-object v1, v0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-nez v1, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object v1, v0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 319
    iget-object v2, v0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v1, v1

    .line 320
    iget v3, v0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorU:F

    iget v4, v0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    sub-float/2addr v3, v4

    mul-float v1, v1, v3

    float-to-int v1, v1

    int-to-float v2, v2

    .line 321
    iget v3, v0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorV:F

    iget v4, v0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 322
    iget v3, v0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_1

    .line 323
    iget-object v3, v0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    iget-object v4, v0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v3, v0, v4, v1, v2}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V

    return-void

    :cond_1
    neg-float v3, v3

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v3, v3, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr v3, v5

    .line 329
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    .line 330
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    int-to-long v5, v1

    int-to-long v7, v2

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    .line 331
    invoke-static/range {v5 .. v16}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v1

    long-to-int v2, v1

    .line 332
    invoke-static/range {v5 .. v16}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v3

    long-to-int v1, v3

    .line 333
    iget-object v3, v0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    iget-object v4, v0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v3, v0, v4, v2, v1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V

    return-void
.end method
