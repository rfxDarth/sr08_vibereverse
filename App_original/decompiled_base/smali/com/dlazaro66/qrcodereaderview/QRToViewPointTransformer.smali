.class public Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;
.super Ljava/lang/Object;
.source "QRToViewPointTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Lcom/google/zxing/ResultPoint;ZLcom/dlazaro66/qrcodereaderview/Orientation;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 3

    .line 26
    iget v0, p5, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    .line 27
    iget p5, p5, Landroid/graphics/Point;->y:I

    int-to-float p5, p5

    .line 33
    sget-object v1, Lcom/dlazaro66/qrcodereaderview/Orientation;->PORTRAIT:Lcom/dlazaro66/qrcodereaderview/Orientation;

    if-ne p3, v1, :cond_1

    .line 34
    iget p3, p4, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    div-float/2addr p3, p5

    .line 35
    iget v1, p4, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 36
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr p5, v2

    mul-float p5, p5, p3

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result p1

    mul-float p1, p1, v1

    invoke-direct {v0, p5, p1}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz p2, :cond_0

    .line 38
    iget p1, p4, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget p2, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :cond_0
    return-object v0

    .line 40
    :cond_1
    sget-object v1, Lcom/dlazaro66/qrcodereaderview/Orientation;->LANDSCAPE:Lcom/dlazaro66/qrcodereaderview/Orientation;

    if-ne p3, v1, :cond_3

    .line 41
    iget p3, p4, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    div-float/2addr p3, v0

    .line 42
    iget v0, p4, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, p5

    .line 43
    new-instance p5, Landroid/graphics/PointF;

    iget v1, p4, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    mul-float v2, v2, p3

    sub-float/2addr v1, v2

    iget p3, p4, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    .line 44
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    mul-float p1, p1, v0

    sub-float/2addr p3, p1

    invoke-direct {p5, v1, p3}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz p2, :cond_2

    .line 46
    iget p1, p4, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p2, p5, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    iput p1, p5, Landroid/graphics/PointF;->x:F

    :cond_2
    return-object p5

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public transform([Lcom/google/zxing/ResultPoint;ZLcom/dlazaro66/qrcodereaderview/Orientation;Landroid/graphics/Point;Landroid/graphics/Point;)[Landroid/graphics/PointF;
    .locals 10

    .line 13
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/PointF;

    .line 15
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v5, p1, v2

    move-object v4, p0

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 16
    invoke-virtual/range {v4 .. v9}, Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;->transform(Lcom/google/zxing/ResultPoint;ZLcom/dlazaro66/qrcodereaderview/Orientation;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object p2

    .line 18
    aput-object p2, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move p2, v6

    goto :goto_0

    :cond_0
    return-object v0
.end method
