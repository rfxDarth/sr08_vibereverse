.class public Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;
.super Landroid/view/View;
.source "SlideUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$OnUnLockListener;
    }
.end annotation


# static fields
.field public static final STATE_LOCK:I = 0x1

.field public static final STATE_MOVING:I = 0x3

.field public static final STATE_UNLOCK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SlideUnlockView"


# instance fields
.field private blockBackgoundWidth:I

.field private blockHeight:I

.field private blockWidth:I

.field public currentState:I

.field private downOnBlock:Z

.field handler:Landroid/os/Handler;

.field private innerText:Ljava/lang/String;

.field private onUnLockListener:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$OnUnLockListener;

.field private slideUnlockBackground:Landroid/graphics/Bitmap;

.field private slideUnlockBlock:Landroid/graphics/Bitmap;

.field textPaint:Landroid/graphics/Paint;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, p2, v0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const-string p1, ""

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->innerText:Ljava/lang/String;

    .line 67
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$1;

    invoke-direct {p1, p0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$1;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;)V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->handler:Landroid/os/Handler;

    .line 139
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->textPaint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    .line 104
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->currentState:I

    .line 108
    const-string p1, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo p3, "slideUnlockBackground"

    const/4 v0, -0x1

    invoke-interface {p2, p1, p3, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p3

    .line 111
    const-string/jumbo v1, "slideUnlockButton"

    invoke-interface {p2, p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 114
    const-string/jumbo v2, "slideUnlockText"

    invoke-interface {p2, p1, v2, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->setText(I)V

    .line 121
    invoke-virtual {p0, p3}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->setSlideUnlockBackground(I)V

    .line 125
    invoke-virtual {p0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->setSlideUnlockBlock(I)V

    .line 129
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->postInvalidate()V

    .line 131
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41a00000    # 20.0f

    invoke-direct {p0, p2, p3}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->dp2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->x:F

    return p0
.end method

.method static synthetic access$002(Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->x:F

    return p1
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockBackgoundWidth:I

    return p0
.end method

.method private dp2px(Landroid/content/Context;F)I
    .locals 0

    .line 334
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 190
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 191
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 192
    new-array v2, v1, [F

    .line 193
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 p1, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 195
    aget p2, v2, v0

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    add-int/2addr p1, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    return v0
.end method

.method private isDownOnBlock(FFFF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 295
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float p2, p2, p1

    sub-float/2addr p3, p4

    .line 296
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    mul-float p1, p1, p3

    add-float/2addr p2, p1

    float-to-double p1, p2

    .line 295
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 297
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockWidth:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isOnBackground(II)Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->slideUnlockBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->slideUnlockBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 142
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 145
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->slideUnlockBackground:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 146
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->textPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->innerText:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    .line 149
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockBackgoundWidth:I

    int-to-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    div-float/2addr v0, v5

    sub-float/2addr v4, v0

    iget v6, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockWidth:I

    int-to-float v7, v6

    const/4 v8, 0x3

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v3, v0

    goto :goto_0

    :cond_0
    add-int/2addr v6, v8

    int-to-float v3, v6

    .line 155
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 160
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->currentState:I

    const/4 v4, 0x1

    const/16 v6, 0xff

    if-eq v0, v4, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    if-eq v0, v8, :cond_1

    goto :goto_2

    .line 173
    :cond_1
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->x:F

    cmpg-float v4, v0, v1

    if-gez v4, :cond_2

    .line 174
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->x:F

    goto :goto_1

    .line 175
    :cond_2
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockBackgoundWidth:I

    iget v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockWidth:I

    sub-int v8, v4, v7

    int-to-float v8, v8

    cmpl-float v0, v0, v8

    if-lez v0, :cond_3

    sub-int/2addr v4, v7

    int-to-float v0, v4

    .line 176
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->x:F

    .line 178
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->slideUnlockBlock:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->x:F

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 179
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->x:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockBackgoundWidth:I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockWidth:I

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    sub-int/2addr v6, v0

    goto :goto_2

    .line 168
    :cond_4
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockBackgoundWidth:I

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockWidth:I

    sub-int/2addr v0, v4

    .line 169
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->slideUnlockBlock:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    goto :goto_2

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->slideUnlockBlock:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 184
    :goto_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 185
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->innerText:Ljava/lang/String;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    div-float/2addr v1, v5

    .line 186
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-direct {p0, v2, v4}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->textPaint:Landroid/graphics/Paint;

    .line 185
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 221
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 224
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockBackgoundWidth:I

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->downOnBlock:Z

    if-eqz v0, :cond_4

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->x:F

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->y:F

    .line 258
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->currentState:I

    .line 261
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->postInvalidate()V

    goto :goto_1

    .line 265
    :cond_1
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->currentState:I

    if-ne p1, v1, :cond_4

    .line 268
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->x:F

    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockBackgoundWidth:I

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 269
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0xa

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 271
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->onUnLockListener:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$OnUnLockListener;

    invoke-interface {p1, v1}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$OnUnLockListener;->setUnLocked(Z)V

    goto :goto_0

    .line 274
    :cond_2
    iput v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->currentState:I

    .line 276
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->onUnLockListener:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$OnUnLockListener;

    invoke-interface {p1, v2}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$OnUnLockListener;->setUnLocked(Z)V

    .line 278
    :goto_0
    iput-boolean v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->downOnBlock:Z

    .line 280
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->postInvalidate()V

    goto :goto_1

    .line 237
    :cond_3
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->currentState:I

    if-eq v0, v1, :cond_4

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->x:F

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->y:F

    .line 243
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 244
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v3

    .line 245
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->x:F

    invoke-direct {p0, v0, v1, v4, p1}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->isDownOnBlock(FFFF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->downOnBlock:Z

    .line 248
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->postInvalidate()V

    :cond_4
    :goto_1
    return v2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 321
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->currentState:I

    .line 322
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->postInvalidate()V

    return-void
.end method

.method public setOnUnLockListener(Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$OnUnLockListener;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->onUnLockListener:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$OnUnLockListener;

    return-void
.end method

.method public setSlideUnlockBackground(I)V
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->slideUnlockBackground:Landroid/graphics/Bitmap;

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockBackgoundWidth:I

    return-void
.end method

.method public setSlideUnlockBlock(I)V
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->slideUnlockBlock:Landroid/graphics/Bitmap;

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockWidth:I

    .line 216
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->slideUnlockBlock:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->blockHeight:I

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->innerText:Ljava/lang/String;

    return-void
.end method
