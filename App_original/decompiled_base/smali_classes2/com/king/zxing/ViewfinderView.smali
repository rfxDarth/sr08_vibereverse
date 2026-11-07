.class public final Lcom/king/zxing/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/zxing/ViewfinderView$TextLocation;,
        Lcom/king/zxing/ViewfinderView$LaserStyle;
    }
.end annotation


# static fields
.field private static final CURRENT_POINT_OPACITY:I = 0xa0

.field private static final MAX_RESULT_POINTS:I = 0x14

.field private static final POINT_SIZE:I = 0x14


# instance fields
.field private cornerColor:I

.field private cornerRectHeight:I

.field private cornerRectWidth:I

.field private frame:Landroid/graphics/Rect;

.field private frameColor:I

.field private frameHeight:I

.field private frameLineWidth:I

.field private frameRatio:F

.field private frameWidth:I

.field private gridColumn:I

.field private gridHeight:I

.field private isShowResultPoint:Z

.field private labelText:Ljava/lang/String;

.field private labelTextColor:I

.field private labelTextLocation:Lcom/king/zxing/ViewfinderView$TextLocation;

.field private labelTextPadding:F

.field private labelTextSize:F

.field private laserColor:I

.field private laserStyle:Lcom/king/zxing/ViewfinderView$LaserStyle;

.field private lastPossibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private maskColor:I

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

.field private resultPointColor:I

.field private scannerAnimationDelay:I

.field public scannerEnd:I

.field private scannerLineHeight:I

.field private scannerLineMoveDistance:I

.field public scannerStart:I

.field private screenHeight:I

.field private screenWidth:I

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1, v0}, Lcom/king/zxing/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, p1, p2, v0}, Lcom/king/zxing/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 243
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 111
    iput p3, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    .line 115
    iput p3, p0, Lcom/king/zxing/ViewfinderView;->scannerEnd:I

    .line 244
    invoke-direct {p0, p1, p2}, Lcom/king/zxing/ViewfinderView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 13

    .line 395
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v7, v1

    .line 398
    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v8, p1

    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, p1

    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    add-int/2addr p1, v0

    int-to-float v10, p1

    iget p1, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    add-int/2addr p1, v0

    int-to-float v11, p1

    iget-object v12, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 400
    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    sub-int/2addr p1, v0

    int-to-float v8, p1

    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, p1

    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v10, p1

    iget p1, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    add-int/2addr p1, v0

    int-to-float v11, p1

    iget-object v12, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 401
    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    sub-int/2addr p1, v0

    int-to-float v8, p1

    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, p1

    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v10, p1

    iget p1, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    add-int/2addr p1, v0

    int-to-float v11, p1

    iget-object v12, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 403
    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v8, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    sub-int/2addr p1, v0

    int-to-float v9, p1

    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    add-int/2addr p1, v0

    int-to-float v10, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, p1

    iget-object v12, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 404
    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v8, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    sub-int/2addr p1, v0

    int-to-float v9, p1

    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    add-int/2addr p1, v0

    int-to-float v10, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, p1

    iget-object v12, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 406
    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    sub-int/2addr p1, v0

    int-to-float v8, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    sub-int/2addr p1, v0

    int-to-float v9, p1

    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v10, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, p1

    iget-object v12, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 407
    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    sub-int/2addr p1, v0

    int-to-float v8, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    sub-int/2addr p1, v0

    int-to-float v9, p1

    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v10, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, p1

    iget-object v12, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawExterior(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 12

    .line 524
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->maskColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, p3

    .line 525
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 526
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v0

    iget-object v11, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 527
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 528
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, p2

    move/from16 p2, p4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 13

    .line 509
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->frameColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 510
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->frameLineWidth:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v7, v1

    .line 511
    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v8, p1

    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, p1

    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->frameLineWidth:I

    add-int/2addr p1, v0

    int-to-float v10, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, p1

    iget-object v12, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 512
    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->frameLineWidth:I

    sub-int/2addr p1, v0

    int-to-float v8, p1

    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, p1

    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v10, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, p1

    iget-object v12, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 513
    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v8, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->frameLineWidth:I

    sub-int/2addr p1, v0

    int-to-float v9, p1

    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v10, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, p1

    iget-object v12, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawGridScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 462
    iget-object v2, v0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x2

    int-to-float v4, v3

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 464
    iget v2, v0, Lcom/king/zxing/ViewfinderView;->gridHeight:I

    if-lez v2, :cond_0

    iget v2, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    iget v4, v0, Lcom/king/zxing/ViewfinderView;->gridHeight:I

    if-le v2, v4, :cond_0

    iget v2, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 466
    :goto_0
    new-instance v4, Landroid/graphics/LinearGradient;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v6, v3

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v2

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/2addr v7, v3

    add-int/2addr v2, v7

    int-to-float v7, v2

    iget v2, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    int-to-float v8, v2

    iget v2, v0, Lcom/king/zxing/ViewfinderView;->laserColor:I

    invoke-virtual {v0, v2}, Lcom/king/zxing/ViewfinderView;->shadeColor(I)I

    move-result v2

    iget v9, v0, Lcom/king/zxing/ViewfinderView;->laserColor:I

    filled-new-array {v2, v9}, [I

    move-result-object v9

    new-array v10, v3, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 468
    iget-object v2, v0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 470
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    iget v3, v0, Lcom/king/zxing/ViewfinderView;->gridColumn:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x1

    .line 473
    :goto_1
    iget v4, v0, Lcom/king/zxing/ViewfinderView;->gridColumn:I

    if-ge v3, v4, :cond_1

    .line 474
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v5, v3

    mul-float v5, v5, v2

    add-float v7, v4, v5

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float v9, v4, v5

    iget v4, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    int-to-float v10, v4

    iget-object v11, v0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move v8, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 477
    :cond_1
    iget v3, v0, Lcom/king/zxing/ViewfinderView;->gridHeight:I

    if-lez v3, :cond_2

    iget v3, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/king/zxing/ViewfinderView;->gridHeight:I

    if-le v3, v4, :cond_2

    goto :goto_2

    :cond_2
    iget v3, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, v4

    :goto_2
    const/4 v3, 0x0

    :goto_3
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v6, v2

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_3

    .line 481
    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v13, v6

    iget v6, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    int-to-float v6, v6

    mul-float v5, v5, v2

    sub-float v14, v6, v5

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v15, v6

    iget v6, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    int-to-float v6, v6

    sub-float v16, v6, v5

    iget-object v5, v0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 484
    :cond_3
    iget v2, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v3, v0, Lcom/king/zxing/ViewfinderView;->scannerEnd:I

    if-ge v2, v3, :cond_4

    .line 485
    iget v1, v0, Lcom/king/zxing/ViewfinderView;->scannerLineMoveDistance:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    return-void

    .line 487
    :cond_4
    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->laserStyle:Lcom/king/zxing/ViewfinderView$LaserStyle;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->laserColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    sget-object v0, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$LaserStyle:[I

    iget-object v1, p0, Lcom/king/zxing/ViewfinderView;->laserStyle:Lcom/king/zxing/ViewfinderView$LaserStyle;

    invoke-virtual {v1}, Lcom/king/zxing/ViewfinderView$LaserStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/king/zxing/ViewfinderView;->drawGridScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 420
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/king/zxing/ViewfinderView;->drawLineScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 426
    :goto_0
    iget-object p1, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_2
    return-void
.end method

.method private drawLineScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    .line 437
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v5, p0, Lcom/king/zxing/ViewfinderView;->scannerLineHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/king/zxing/ViewfinderView;->laserColor:I

    .line 440
    invoke-virtual {p0, v5}, Lcom/king/zxing/ViewfinderView;->shadeColor(I)I

    move-result v5

    iget v6, p0, Lcom/king/zxing/ViewfinderView;->laserColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 444
    iget-object v1, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 445
    iget v0, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->scannerEnd:I

    if-gt v0, v1, :cond_0

    .line 447
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/king/zxing/ViewfinderView;->scannerLineHeight:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/king/zxing/ViewfinderView;->scannerLineHeight:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr p2, v4

    int-to-float p2, p2

    iget v4, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    add-int/2addr v4, v3

    int-to-float v3, v4

    invoke-direct {v0, v1, v2, p2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 448
    iget-object p2, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 449
    iget p1, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    iget p2, p0, Lcom/king/zxing/ViewfinderView;->scannerLineMoveDistance:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    return-void

    .line 451
    :cond_0
    iget p1, p2, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    return-void
.end method

.method private drawResultPoint(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6

    .line 538
    iget-boolean p2, p0, Lcom/king/zxing/ViewfinderView;->isShowResultPoint:Z

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 542
    :cond_0
    iget-object p2, p0, Lcom/king/zxing/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 543
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 545
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    .line 546
    iput-object p2, p0, Lcom/king/zxing/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    goto :goto_1

    .line 548
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/king/zxing/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 549
    iput-object p2, p0, Lcom/king/zxing/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 550
    iget-object v1, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 551
    iget-object v1, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/king/zxing/ViewfinderView;->resultPointColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    monitor-enter p2

    .line 554
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/ResultPoint;

    .line 555
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    iget-object v5, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 557
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    if-eqz v0, :cond_4

    .line 560
    iget-object p2, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 561
    iget-object p2, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->resultPointColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 562
    monitor-enter v0

    .line 564
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/ResultPoint;

    .line 565
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    iget-object v4, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 567
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_3
    return-void

    :catchall_1
    move-exception p1

    .line 557
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10

    .line 373
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->labelText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->labelTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 375
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->labelTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 376
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 377
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/king/zxing/ViewfinderView;->labelText:Ljava/lang/String;

    iget-object v4, p0, Lcom/king/zxing/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 378
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->labelTextLocation:Lcom/king/zxing/ViewfinderView$TextLocation;

    sget-object v1, Lcom/king/zxing/ViewfinderView$TextLocation;->BOTTOM:Lcom/king/zxing/ViewfinderView$TextLocation;

    if-ne v0, v1, :cond_0

    .line 379
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->labelTextPadding:F

    add-float/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 380
    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 382
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->labelTextPadding:F

    sub-float/2addr p2, v1

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 383
    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 250
    sget-object v0, Lcom/king/zxing/R$styleable;->ViewfinderView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 251
    sget v0, Lcom/king/zxing/R$styleable;->ViewfinderView_maskColor:I

    sget v1, Lcom/king/zxing/R$color;->viewfinder_mask:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/king/zxing/ViewfinderView;->maskColor:I

    .line 252
    sget v0, Lcom/king/zxing/R$styleable;->ViewfinderView_frameColor:I

    sget v1, Lcom/king/zxing/R$color;->viewfinder_frame:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/king/zxing/ViewfinderView;->frameColor:I

    .line 253
    sget v0, Lcom/king/zxing/R$styleable;->ViewfinderView_cornerColor:I

    sget v1, Lcom/king/zxing/R$color;->viewfinder_corner:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/king/zxing/ViewfinderView;->cornerColor:I

    .line 254
    sget v0, Lcom/king/zxing/R$styleable;->ViewfinderView_laserColor:I

    sget v1, Lcom/king/zxing/R$color;->viewfinder_laser:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/king/zxing/ViewfinderView;->laserColor:I

    .line 255
    sget v0, Lcom/king/zxing/R$styleable;->ViewfinderView_resultPointColor:I

    sget v1, Lcom/king/zxing/R$color;->viewfinder_result_point_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/king/zxing/ViewfinderView;->resultPointColor:I

    .line 257
    sget v0, Lcom/king/zxing/R$styleable;->ViewfinderView_labelText:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/ViewfinderView;->labelText:Ljava/lang/String;

    .line 258
    sget v0, Lcom/king/zxing/R$styleable;->ViewfinderView_labelTextColor:I

    sget v1, Lcom/king/zxing/R$color;->viewfinder_text_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->labelTextColor:I

    .line 259
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_labelTextSize:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->labelTextSize:F

    .line 260
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_labelTextPadding:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->labelTextPadding:F

    .line 261
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_labelTextLocation:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Lcom/king/zxing/ViewfinderView$TextLocation;->access$000(I)Lcom/king/zxing/ViewfinderView$TextLocation;

    move-result-object p1

    iput-object p1, p0, Lcom/king/zxing/ViewfinderView;->labelTextLocation:Lcom/king/zxing/ViewfinderView$TextLocation;

    .line 263
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_showResultPoint:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/king/zxing/ViewfinderView;->isShowResultPoint:Z

    .line 265
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_frameWidth:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->frameWidth:I

    .line 266
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_frameHeight:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->frameHeight:I

    .line 268
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_laserStyle:I

    sget-object v0, Lcom/king/zxing/ViewfinderView$LaserStyle;->LINE:Lcom/king/zxing/ViewfinderView$LaserStyle;

    invoke-static {v0}, Lcom/king/zxing/ViewfinderView$LaserStyle;->access$100(Lcom/king/zxing/ViewfinderView$LaserStyle;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Lcom/king/zxing/ViewfinderView$LaserStyle;->access$200(I)Lcom/king/zxing/ViewfinderView$LaserStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/king/zxing/ViewfinderView;->laserStyle:Lcom/king/zxing/ViewfinderView$LaserStyle;

    .line 269
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_gridColumn:I

    const/16 v0, 0x14

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->gridColumn:I

    .line 270
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_gridHeight:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->gridHeight:I

    .line 272
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_cornerRectWidth:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectWidth:I

    .line 273
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_cornerRectHeight:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->cornerRectHeight:I

    .line 274
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_scannerLineMoveDistance:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->scannerLineMoveDistance:I

    .line 275
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_scannerLineHeight:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->scannerLineHeight:I

    .line 276
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_frameLineWidth:I

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->frameLineWidth:I

    .line 277
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_scannerAnimationDelay:I

    const/16 v0, 0xf

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->scannerAnimationDelay:I

    .line 278
    sget p1, Lcom/king/zxing/R$styleable;->ViewfinderView_frameRatio:I

    const/high16 v0, 0x3f200000    # 0.625f

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->frameRatio:F

    .line 279
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/king/zxing/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 282
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/king/zxing/ViewfinderView;->textPaint:Landroid/text/TextPaint;

    .line 284
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/king/zxing/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    const/4 p1, 0x0

    .line 285
    iput-object p1, p0, Lcom/king/zxing/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 287
    invoke-direct {p0}, Lcom/king/zxing/ViewfinderView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->screenWidth:I

    .line 288
    invoke-direct {p0}, Lcom/king/zxing/ViewfinderView;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->screenHeight:I

    .line 290
    iget p2, p0, Lcom/king/zxing/ViewfinderView;->screenWidth:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/king/zxing/ViewfinderView;->frameRatio:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 292
    iget p2, p0, Lcom/king/zxing/ViewfinderView;->frameWidth:I

    if-lez p2, :cond_0

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->screenWidth:I

    if-le p2, v0, :cond_1

    .line 293
    :cond_0
    iput p1, p0, Lcom/king/zxing/ViewfinderView;->frameWidth:I

    .line 296
    :cond_1
    iget p2, p0, Lcom/king/zxing/ViewfinderView;->frameHeight:I

    if-lez p2, :cond_3

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->screenHeight:I

    if-le p2, v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 297
    :cond_3
    :goto_0
    iput p1, p0, Lcom/king/zxing/ViewfinderView;->frameHeight:I

    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 2

    .line 593
    iget-boolean v0, p0, Lcom/king/zxing/ViewfinderView;->isShowResultPoint:Z

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 595
    monitor-enter v0

    .line 596
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_0

    add-int/lit8 p1, p1, -0xa

    const/4 v1, 0x0

    .line 600
    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 602
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public drawViewfinder()V
    .locals 0

    .line 572
    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->invalidate()V

    return-void
.end method

.method public isShowResultPoint()Z
    .locals 1

    .line 576
    iget-boolean v0, p0, Lcom/king/zxing/ViewfinderView;->isShowResultPoint:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 334
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    iget v1, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->scannerEnd:I

    if-nez v1, :cond_2

    .line 339
    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/king/zxing/ViewfinderView;->scannerStart:I

    .line 340
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->scannerLineHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/king/zxing/ViewfinderView;->scannerEnd:I

    .line 343
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 347
    iget-object v2, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/king/zxing/ViewfinderView;->drawExterior(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 349
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/king/zxing/ViewfinderView;->drawLaserScanner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 351
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/king/zxing/ViewfinderView;->drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 353
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/king/zxing/ViewfinderView;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 355
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/king/zxing/ViewfinderView;->drawTextInfo(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 357
    iget-object v0, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/king/zxing/ViewfinderView;->drawResultPoint(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 360
    iget p1, p0, Lcom/king/zxing/ViewfinderView;->scannerAnimationDelay:I

    int-to-long v1, p1

    iget-object p1, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, p1, -0x14

    iget-object p1, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, p1, -0x14

    iget-object p1, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, p1, 0x14

    iget-object p1, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, p1, 0x14

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/king/zxing/ViewfinderView;->postInvalidateDelayed(JIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 324
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 326
    iget p1, p0, Lcom/king/zxing/ViewfinderView;->screenWidth:I

    iget p2, p0, Lcom/king/zxing/ViewfinderView;->frameWidth:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 327
    iget p2, p0, Lcom/king/zxing/ViewfinderView;->screenHeight:I

    iget v0, p0, Lcom/king/zxing/ViewfinderView;->frameHeight:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 328
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/king/zxing/ViewfinderView;->frameWidth:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/king/zxing/ViewfinderView;->frameHeight:I

    add-int/2addr v2, p2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/king/zxing/ViewfinderView;->frame:Landroid/graphics/Rect;

    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/king/zxing/ViewfinderView;->labelText:Ljava/lang/String;

    return-void
.end method

.method public setLabelTextColor(I)V
    .locals 0

    .line 311
    iput p1, p0, Lcom/king/zxing/ViewfinderView;->labelTextColor:I

    return-void
.end method

.method public setLabelTextColorResource(I)V
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/king/zxing/ViewfinderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/king/zxing/ViewfinderView;->labelTextColor:I

    return-void
.end method

.method public setLabelTextSize(F)V
    .locals 0

    .line 319
    iput p1, p0, Lcom/king/zxing/ViewfinderView;->labelTextSize:F

    return-void
.end method

.method public setLaserStyle(Lcom/king/zxing/ViewfinderView$LaserStyle;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/king/zxing/ViewfinderView;->laserStyle:Lcom/king/zxing/ViewfinderView$LaserStyle;

    return-void
.end method

.method public setShowResultPoint(Z)V
    .locals 0

    .line 588
    iput-boolean p1, p0, Lcom/king/zxing/ViewfinderView;->isShowResultPoint:Z

    return-void
.end method

.method public shadeColor(I)I
    .locals 2

    .line 498
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "01"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    .line 500
    invoke-static {p1, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
