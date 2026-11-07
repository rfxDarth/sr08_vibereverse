.class Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;
.super Landroid/view/View;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/camera/Preview;->showToast(Lcom/jaga/ibraceletplus/jyring/camera/Preview$ToastBoxer;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotatedTextView"
.end annotation


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;

.field private text:Ljava/lang/String;

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 4419
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    .line 4420
    invoke-direct {p0, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4414
    const-string p1, ""

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->text:Ljava/lang/String;

    .line 4415
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->paint:Landroid/graphics/Paint;

    .line 4416
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->bounds:Landroid/graphics/Rect;

    .line 4417
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    .line 4422
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 4427
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 4428
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x41600000    # 14.0f

    mul-float v2, v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4429
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/high16 v5, -0x1000000

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v4, v6, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 4430
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->bounds:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    float-to-int v1, v2

    const/high16 v2, 0x42000000    # 32.0f

    mul-float v0, v0, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 4436
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4437
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$2700(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4439
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 4440
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 4441
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 4442
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 4444
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4445
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0x4b

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4446
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v8, v2

    .line 4448
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4449
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4450
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, p1

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v10, p1

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v11, p1

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v12, p1

    iget-object v13, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4451
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, p1

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v10, p1

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v11, p1

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, p1

    iget-object v13, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4453
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4454
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4455
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->text:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    int-to-float v0, v2

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1RotatedTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4456
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
