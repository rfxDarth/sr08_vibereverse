.class public Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;
.super Landroid/view/View;
.source "MyEcgSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView$OnLoadingListener;
    }
.end annotation


# instance fields
.field public ECGdatadeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private TAG:Ljava/lang/String;

.field private alPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private current:I

.field private isDrawing:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaint01:Landroid/graphics/Paint;

.field public name:Ljava/lang/String;

.field public offset:F

.field public onLoadingListener:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView$OnLoadingListener;

.field public speed:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->current:I

    .line 31
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 115
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->offset:F

    const/4 v0, 0x5

    .line 117
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->speed:I

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->name:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->alPath:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->current:I

    .line 31
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 115
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->offset:F

    const/4 v0, 0x5

    .line 117
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->speed:I

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->name:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->alPath:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->context:Landroid/content/Context;

    .line 46
    invoke-direct {p0, p2}, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->setKeepScreenOn(Z)V

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->mPaint01:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->mPaint01:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/jaga/ibraceletplus/jyring/R$styleable;->MyEcgSurfaceView:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 79
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->mPaint01:Landroid/graphics/Paint;

    const v2, -0xc7cc0

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->mPaint01:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->context:Landroid/content/Context;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 83
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->mPaint:Landroid/graphics/Paint;

    const v2, -0xae2357

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->context:Landroid/content/Context;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 125
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->speed:I

    .line 126
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 130
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    double-to-float v3, v3

    .line 132
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->alPath:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->current:I

    add-int v6, v5, v2

    if-le v4, v6, :cond_1

    .line 133
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->alPath:Ljava/util/ArrayList;

    add-int/2addr v5, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    :cond_1
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->alPath:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_1
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->onLoadingListener:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView$OnLoadingListener;

    if-eqz v4, :cond_2

    .line 138
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->current:I

    add-int/2addr v5, v2

    float-to-double v6, v3

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    invoke-interface {v4, v5, v6, v7, v3}, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView$OnLoadingListener;->onLoading(IDI)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_3
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->current:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->current:I

    .line 142
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v2, 0x0

    .line 143
    :goto_2
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->alPath:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 144
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->alPath:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    if-eqz v2, :cond_5

    .line 145
    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->current:I

    if-ne v2, v4, :cond_4

    goto :goto_3

    :cond_4
    int-to-float v4, v2

    .line 151
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->offset:F

    mul-float v4, v4, v5

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    :cond_5
    :goto_3
    int-to-float v4, v2

    .line 146
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->offset:F

    mul-float v4, v4, v5

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 156
    :cond_6
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->mPaint01:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 157
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->current:I

    int-to-float v3, v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 160
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->current:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->offset:F

    div-float/2addr v0, v2

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_7

    .line 161
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->current:I

    :cond_7
    return-void
.end method

.method public run()V
    .locals 4

    .line 95
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->isDrawing:Z

    if-eqz v0, :cond_2

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->postInvalidate()V

    .line 99
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v0, v2

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    rsub-int/lit8 v0, v0, 0x14

    int-to-long v0, v0

    .line 106
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setData(D)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnLoadingListener(Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView$OnLoadingListener;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->onLoadingListener:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView$OnLoadingListener;

    return-void
.end method

.method public startThread()V
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->isDrawing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->isDrawing:Z

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->current:I

    .line 54
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 55
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->alPath:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stopThread()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;->isDrawing:Z

    return-void
.end method
