.class public Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SpeechBalloonOverlay.java"


# instance fields
.field private mBackground:Landroid/graphics/Paint;

.field private mDragBackground:Landroid/graphics/Paint;

.field private mDragDeltaX:F

.field private mDragDeltaY:F

.field private mDragForeground:Landroid/graphics/Paint;

.field private mDragStartX:F

.field private mDragStartY:F

.field private mDraggable:Z

.field private mForeground:Landroid/graphics/Paint;

.field private mGeoPoint:Lorg/osmdroid/util/GeoPoint;

.field private final mHelper:Lorg/osmdroid/util/SpeechBalloonHelper;

.field private final mIntersection1:Lorg/osmdroid/util/PointL;

.field private final mIntersection2:Lorg/osmdroid/util/PointL;

.field private mIsDragged:Z

.field private mMargin:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mPath:Landroid/graphics/Path;

.field private final mPixel:Landroid/graphics/Point;

.field private final mPoint:Lorg/osmdroid/util/PointL;

.field private mRadius:D

.field private final mRect:Lorg/osmdroid/util/RectL;

.field private final mTextRect:Landroid/graphics/Rect;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 25
    new-instance v0, Lorg/osmdroid/util/SpeechBalloonHelper;

    invoke-direct {v0}, Lorg/osmdroid/util/SpeechBalloonHelper;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mHelper:Lorg/osmdroid/util/SpeechBalloonHelper;

    .line 26
    new-instance v0, Lorg/osmdroid/util/RectL;

    invoke-direct {v0}, Lorg/osmdroid/util/RectL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRect:Lorg/osmdroid/util/RectL;

    .line 27
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    .line 28
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection1:Lorg/osmdroid/util/PointL;

    .line 29
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection2:Lorg/osmdroid/util/PointL;

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPixel:Landroid/graphics/Point;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDraggable:Z

    return-void
.end method

.method private hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4

    .line 179
    iget-object p2, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-long v2, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/osmdroid/util/RectL;->contains(JJ)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 23

    move-object/from16 v0, p0

    .line 99
    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIsDragged:Z

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragBackground:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mBackground:Landroid/graphics/Paint;

    .line 101
    :goto_0
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragForeground:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mForeground:Landroid/graphics/Paint;

    goto :goto_1

    .line 103
    :cond_2
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mBackground:Landroid/graphics/Paint;

    .line 104
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mForeground:Landroid/graphics/Paint;

    :goto_1
    move-object v6, v1

    move-object v7, v2

    .line 106
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    if-nez v1, :cond_3

    goto/16 :goto_2

    .line 109
    :cond_3
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_2

    :cond_4
    if-eqz v7, :cond_7

    if-nez v6, :cond_5

    goto/16 :goto_2

    .line 115
    :cond_5
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPixel:Landroid/graphics/Point;

    move-object/from16 v3, p2

    invoke-virtual {v3, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 116
    iget-object v8, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTitle:Ljava/lang/String;

    .line 117
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v7, v8, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 118
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPixel:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-long v2, v2

    iget-object v4, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPixel:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/PointL;->set(JJ)V

    .line 119
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    iget v4, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetX:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->y:J

    iget v5, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetY:I

    int-to-long v9, v5

    add-long/2addr v3, v9

    long-to-float v3, v3

    iget v4, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 120
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 121
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 122
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 123
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 124
    iget-object v9, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRect:Lorg/osmdroid/util/RectL;

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-long v10, v1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-long v12, v1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-long v14, v1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-long v1, v1

    move-wide/from16 v16, v1

    invoke-virtual/range {v9 .. v17}, Lorg/osmdroid/util/RectL;->set(JJJJ)V

    .line 125
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mHelper:Lorg/osmdroid/util/SpeechBalloonHelper;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRect:Lorg/osmdroid/util/RectL;

    iget-object v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRadius:D

    iget-object v9, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection1:Lorg/osmdroid/util/PointL;

    iget-object v10, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection2:Lorg/osmdroid/util/PointL;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-virtual/range {v16 .. v22}, Lorg/osmdroid/util/SpeechBalloonHelper;->compute(Lorg/osmdroid/util/RectL;Lorg/osmdroid/util/PointL;DLorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;)I

    move-result v9

    .line 126
    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget-object v1, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, -0x1

    if-eq v9, v2, :cond_6

    .line 128
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 129
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->x:J

    long-to-float v3, v3

    iget-object v4, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->y:J

    long-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 130
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection1:Lorg/osmdroid/util/PointL;

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->x:J

    long-to-float v3, v3

    iget-object v4, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection1:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->y:J

    long-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection2:Lorg/osmdroid/util/PointL;

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->x:J

    long-to-float v3, v3

    iget-object v4, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIntersection2:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->y:J

    long-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 133
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 135
    :cond_6
    iget-object v2, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v8, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2

    .line 140
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDraggable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 144
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIsDragged:Z

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartX:F

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartY:F

    const/4 p1, 0x0

    .line 147
    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    .line 148
    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaY:F

    .line 149
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4

    .line 157
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDraggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIsDragged:Z

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartX:F

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartY:F

    sub-float/2addr p1, v0

    .line 161
    iget v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetX:I

    int-to-float v0, v0

    iget v3, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetX:I

    .line 162
    iget v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetY:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetY:I

    const/4 p1, 0x0

    .line 163
    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    .line 164
    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaY:F

    .line 165
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mIsDragged:Z

    .line 166
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    return v2

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaX:F

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragStartY:F

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragDeltaY:F

    .line 171
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    return v2

    :cond_1
    return v1
.end method

.method public setBackground(Landroid/graphics/Paint;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mBackground:Landroid/graphics/Paint;

    return-void
.end method

.method public setDragBackground(Landroid/graphics/Paint;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragBackground:Landroid/graphics/Paint;

    return-void
.end method

.method public setDragForeground(Landroid/graphics/Paint;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mDragForeground:Landroid/graphics/Paint;

    return-void
.end method

.method public setForeground(Landroid/graphics/Paint;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mForeground:Landroid/graphics/Paint;

    return-void
.end method

.method public setGeoPoint(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public setMargin(I)V
    .locals 0

    .line 83
    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mMargin:I

    return-void
.end method

.method public setOffset(II)V
    .locals 0

    .line 91
    iput p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetX:I

    .line 92
    iput p2, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mOffsetY:I

    return-void
.end method

.method public setRadius(J)V
    .locals 0

    long-to-double p1, p1

    .line 87
    iput-wide p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mRadius:D

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/osmdroid/views/overlay/SpeechBalloonOverlay;->mTitle:Ljava/lang/String;

    return-void
.end method
