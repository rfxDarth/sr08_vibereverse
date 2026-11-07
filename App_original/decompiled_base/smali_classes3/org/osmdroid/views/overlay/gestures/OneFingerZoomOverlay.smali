.class public Lorg/osmdroid/views/overlay/gestures/OneFingerZoomOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "OneFingerZoomOverlay.java"


# instance fields
.field private mIsDoubleClick:Z

.field private mLastY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/gestures/OneFingerZoomOverlay;->mIsDoubleClick:Z

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 18
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/gestures/OneFingerZoomOverlay;->mIsDoubleClick:Z

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/gestures/OneFingerZoomOverlay;->mIsDoubleClick:Z

    .line 22
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onDoubleTapEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 7

    .line 32
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/gestures/OneFingerZoomOverlay;->mIsDoubleClick:Z

    if-eqz v0, :cond_1

    .line 33
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/16 v1, 0x64

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 36
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v2

    .line 37
    iget v2, p0, Lorg/osmdroid/views/overlay/gestures/OneFingerZoomOverlay;->mLastY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 38
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v2

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v3

    float-to-double v5, v1

    sub-double/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v2

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v3

    float-to-double v5, v1

    add-double/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    .line 42
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/gestures/OneFingerZoomOverlay;->mLastY:F

    .line 43
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 45
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result p1

    return p1
.end method
