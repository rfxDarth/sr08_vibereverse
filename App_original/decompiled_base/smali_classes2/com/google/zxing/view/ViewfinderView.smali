.class public final Lcom/google/zxing/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0xaL

.field private static final MAX_RESULT_POINTS:I = 0x14

.field private static MIDDLE_LINE_PADDING:I = 0x0

.field private static MIDDLE_LINE_WIDTH:I = 0x0

.field private static final OPAQUE:I = 0xff

.field private static final SPEEN_DISTANCE:I = 0xa


# instance fields
.field private CORNER_PADDING:I

.field private cameraManager:Lcom/google/zxing/camera/CameraManager;

.field isFirst:Z

.field private lastPossibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private slideBottom:I

.field private slideTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 95
    iput-boolean p2, p0, Lcom/google/zxing/view/ViewfinderView;->isFirst:Z

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/view/ViewfinderView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/google/zxing/view/ViewfinderView;->CORNER_PADDING:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/view/ViewfinderView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/google/zxing/view/ViewfinderView;->MIDDLE_LINE_PADDING:I

    const/high16 v0, 0x40400000    # 3.0f

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/view/ViewfinderView;->dip2px(Landroid/content/Context;F)I

    move-result p1

    sput p1, Lcom/google/zxing/view/ViewfinderView;->MIDDLE_LINE_WIDTH:I

    .line 107
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 109
    invoke-virtual {p0}, Lcom/google/zxing/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 110
    sget p2, Lcom/google/zxing/R$color;->viewfinder_mask:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/zxing/view/ViewfinderView;->maskColor:I

    .line 111
    sget p2, Lcom/google/zxing/R$color;->result_view:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/zxing/view/ViewfinderView;->resultColor:I

    .line 113
    sget p2, Lcom/google/zxing/R$color;->possible_result_points:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/zxing/view/ViewfinderView;->resultPointColor:I

    .line 114
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/google/zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    return-void
.end method

.method private drawCover(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 224
    iget-object v4, v0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/google/zxing/view/ViewfinderView;->resultColor:I

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/google/zxing/view/ViewfinderView;->maskColor:I

    :goto_0
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v2

    .line 228
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v2

    iget-object v11, v0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v14, v2

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v15, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v4, v0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    move-object/from16 v12, p1

    move/from16 v16, v2

    move-object/from16 v17, v4

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 230
    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v7, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v10, v2

    iget-object v11, v0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v8, v1

    int-to-float v10, v3

    iget-object v11, v0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRectEdges(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    .line 243
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 246
    invoke-virtual {p0}, Lcom/google/zxing/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 250
    sget v1, Lcom/google/zxing/R$drawable;->scan_corner_top_left:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 252
    sget v2, Lcom/google/zxing/R$drawable;->scan_corner_top_right:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 254
    sget v3, Lcom/google/zxing/R$drawable;->scan_corner_bottom_left:I

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 256
    sget v4, Lcom/google/zxing/R$drawable;->scan_corner_bottom_right:I

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 259
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/google/zxing/view/ViewfinderView;->CORNER_PADDING:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/google/zxing/view/ViewfinderView;->CORNER_PADDING:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 261
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/google/zxing/view/ViewfinderView;->CORNER_PADDING:I

    sub-int/2addr v4, v5

    .line 262
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/google/zxing/view/ViewfinderView;->CORNER_PADDING:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 261
    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 264
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/google/zxing/view/ViewfinderView;->CORNER_PADDING:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/google/zxing/view/ViewfinderView;->CORNER_PADDING:I

    sub-int/2addr v5, v6

    .line 266
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 264
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 267
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/google/zxing/view/ViewfinderView;->CORNER_PADDING:I

    sub-int/2addr v4, v5

    .line 268
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/google/zxing/view/ViewfinderView;->CORNER_PADDING:I

    sub-int/2addr p2, v5

    .line 269
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr p2, v5

    add-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 267
    invoke-virtual {p1, v0, v4, p2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 271
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 273
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 275
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private drawScanningLine(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    .line 187
    iget-boolean v0, p0, Lcom/google/zxing/view/ViewfinderView;->isFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/google/zxing/view/ViewfinderView;->isFirst:Z

    .line 189
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/google/zxing/view/ViewfinderView;->slideTop:I

    .line 190
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/google/zxing/view/ViewfinderView;->slideBottom:I

    .line 194
    :cond_0
    iget v0, p0, Lcom/google/zxing/view/ViewfinderView;->slideTop:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/zxing/view/ViewfinderView;->slideTop:I

    .line 195
    iget v1, p0, Lcom/google/zxing/view/ViewfinderView;->slideBottom:I

    if-lt v0, v1, :cond_1

    .line 196
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/google/zxing/view/ViewfinderView;->slideTop:I

    .line 200
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 201
    iget v1, p2, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/google/zxing/view/ViewfinderView;->MIDDLE_LINE_PADDING:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 202
    iget p2, p2, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/google/zxing/view/ViewfinderView;->MIDDLE_LINE_PADDING:I

    sub-int/2addr p2, v1

    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 203
    iget p2, p0, Lcom/google/zxing/view/ViewfinderView;->slideTop:I

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 204
    iget p2, p0, Lcom/google/zxing/view/ViewfinderView;->slideTop:I

    sget v1, Lcom/google/zxing/view/ViewfinderView;->MIDDLE_LINE_WIDTH:I

    add-int/2addr p2, v1

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 205
    invoke-virtual {p0}, Lcom/google/zxing/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/google/zxing/R$drawable;->scan_laser:I

    .line 206
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 205
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 304
    monitor-enter v0

    .line 305
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_0

    add-int/lit8 p1, p1, -0xa

    const/4 v1, 0x0

    .line 309
    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 311
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 322
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

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 299
    invoke-virtual {p0}, Lcom/google/zxing/view/ViewfinderView;->invalidate()V

    return-void
.end method

.method public drawViewfinder()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 284
    iput-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/view/ViewfinderView;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 125
    iget-object v0, p0, Lcom/google/zxing/view/ViewfinderView;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/view/ViewfinderView;->drawCover(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 136
    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 139
    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 143
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/view/ViewfinderView;->drawRectEdges(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/view/ViewfinderView;->drawScanningLine(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 148
    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 149
    iget-object v3, p0, Lcom/google/zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 150
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 151
    iput-object v2, p0, Lcom/google/zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    goto :goto_2

    .line 153
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 154
    iput-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 155
    iget-object v2, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    iget-object v2, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/google/zxing/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/ResultPoint;

    .line 158
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 159
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    add-float/2addr v5, v2

    const/high16 v2, 0x40c00000    # 6.0f

    iget-object v6, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 158
    invoke-virtual {p1, v4, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 163
    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 164
    iget-object v1, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/zxing/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/ResultPoint;

    .line 166
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 167
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    add-float/2addr v4, v2

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v5, p0, Lcom/google/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 166
    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 172
    :cond_5
    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    const-wide/16 v7, 0xa

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/google/zxing/view/ViewfinderView;->postInvalidateDelayed(JIIII)V

    return-void
.end method

.method public setCameraManager(Lcom/google/zxing/camera/CameraManager;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/google/zxing/view/ViewfinderView;->cameraManager:Lcom/google/zxing/camera/CameraManager;

    return-void
.end method
