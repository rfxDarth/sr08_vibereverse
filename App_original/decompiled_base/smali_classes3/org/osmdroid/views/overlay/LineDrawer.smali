.class public Lorg/osmdroid/views/overlay/LineDrawer;
.super Lorg/osmdroid/util/LineBuilder;
.source "LineDrawer.java"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

.field private mPaintList:Lorg/osmdroid/views/overlay/PaintList;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/osmdroid/util/LineBuilder;-><init>(I)V

    return-void
.end method

.method private additionalFlush()V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lorg/osmdroid/util/IntegerAccepter;->flush()V

    :cond_0
    return-void
.end method

.method private static compact([FI)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 90
    aget v2, p0, v0

    add-int/lit8 v3, v0, 0x1

    .line 91
    aget v3, p0, v3

    add-int/lit8 v4, v0, 0x2

    .line 92
    aget v4, p0, v4

    add-int/lit8 v5, v0, 0x3

    .line 93
    aget v5, p0, v5

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    cmpl-float v2, v3, v5

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    .line 98
    invoke-static {p0, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    add-int/lit8 v1, v1, 0x4

    :goto_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public flush()V
    .locals 11

    .line 44
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/LineDrawer;->getSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LineDrawer;->additionalFlush()V

    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/LineDrawer;->getLines()[F

    move-result-object v1

    .line 50
    iget-object v2, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mPaintList:Lorg/osmdroid/views/overlay/PaintList;

    invoke-interface {v2}, Lorg/osmdroid/views/overlay/PaintList;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    mul-int/lit8 v0, v0, 0x4

    .line 52
    invoke-static {v1, v0}, Lorg/osmdroid/views/overlay/LineDrawer;->compact([FI)I

    move-result v0

    if-lez v0, :cond_1

    .line 54
    iget-object v4, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 56
    :cond_1
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LineDrawer;->additionalFlush()V

    return-void

    :cond_2
    :goto_0
    mul-int/lit8 v2, v0, 0x4

    if-ge v3, v2, :cond_4

    .line 60
    aget v5, v1, v3

    add-int/lit8 v2, v3, 0x1

    .line 61
    aget v6, v1, v2

    add-int/lit8 v2, v3, 0x2

    .line 62
    aget v7, v1, v2

    add-int/lit8 v2, v3, 0x3

    .line 63
    aget v8, v1, v2

    cmpl-float v2, v5, v7

    if-nez v2, :cond_3

    cmpl-float v2, v6, v8

    if-nez v2, :cond_3

    goto :goto_1

    .line 67
    :cond_3
    iget-object v2, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    div-int/lit8 v4, v3, 0x2

    invoke-virtual {v2, v4}, Lorg/osmdroid/util/IntegerAccepter;->getValue(I)I

    move-result v2

    .line 68
    iget-object v10, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mPaintList:Lorg/osmdroid/views/overlay/PaintList;

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v2

    invoke-interface/range {v4 .. v9}, Lorg/osmdroid/views/overlay/PaintList;->getPaint(IFFFF)Landroid/graphics/Paint;

    move-result-object v2

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v4, v10

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 70
    :cond_4
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LineDrawer;->additionalFlush()V

    return-void
.end method

.method public setCanvas(Landroid/graphics/Canvas;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public setIntegerAccepter(Lorg/osmdroid/util/IntegerAccepter;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 1

    .line 31
    new-instance v0, Lorg/osmdroid/views/overlay/advancedpolyline/MonochromaticPaintList;

    invoke-direct {v0, p1}, Lorg/osmdroid/views/overlay/advancedpolyline/MonochromaticPaintList;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/LineDrawer;->setPaint(Lorg/osmdroid/views/overlay/PaintList;)V

    return-void
.end method

.method public setPaint(Lorg/osmdroid/views/overlay/PaintList;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lorg/osmdroid/views/overlay/LineDrawer;->mPaintList:Lorg/osmdroid/views/overlay/PaintList;

    return-void
.end method
