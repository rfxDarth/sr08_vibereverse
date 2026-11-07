.class public Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;
.super Landroid/view/View;
.source "CustomBarChartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;
    }
.end annotation


# instance fields
.field private final AXIS_COLOR:I

.field private final AXIS_LINE_WIDTH:F

.field private final BOLD_LINE_WIDTH:F

.field private final COLOR_1:I

.field private final COLOR_2:I

.field private final COLOR_3:I

.field private final COLOR_4:I

.field private final DASH_WIDTH:F

.field private final GRID_COLOR:I

.field private final LEGEND_BAR_WIDTH:F

.field private final LEGEND_LEFT_MARGIN:F

.field private final LEGEND_TO_TEXT_SPACING:F

.field private final TEXT_COLOR:I

.field private final TEXT_RIGHT_MARGIN:F

.field private final TEXT_SIZE:F

.field private axisPaint:Landroid/graphics/Paint;

.field private barPaint:Landroid/graphics/Paint;

.field private chartBottom:F

.field private chartLeft:F

.field private chartRight:F

.field private chartTop:F

.field private dashGridPaint:Landroid/graphics/Paint;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private fixedBarWidth:F

.field private gridPaint:Landroid/graphics/Paint;

.field private leftMargin:F

.field private legendLeft:F

.field private legendRight:F

.field private mode:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->mode:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->data:Ljava/util/List;

    const/16 p1, 0xbc

    const/16 v0, 0xce

    const/16 v1, 0xff

    .line 36
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_1:I

    const/16 p1, 0x86

    const/16 v0, 0xb1

    .line 37
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_2:I

    const/16 p1, 0x52

    const/16 v0, 0x82

    .line 38
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_3:I

    const/16 p1, 0x8b

    const/4 v0, 0x6

    const/16 v1, 0xfd

    .line 39
    invoke-static {v1, p1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_4:I

    const p1, -0x777778

    .line 41
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->AXIS_COLOR:I

    const/high16 p1, -0x1000000

    .line 42
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->TEXT_COLOR:I

    const p1, -0x333334

    .line 43
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->GRID_COLOR:I

    const/high16 p1, 0x41f00000    # 30.0f

    .line 44
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->TEXT_SIZE:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 45
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->AXIS_LINE_WIDTH:F

    const/high16 v0, 0x40c00000    # 6.0f

    .line 46
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->BOLD_LINE_WIDTH:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 47
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->DASH_WIDTH:F

    const/high16 v1, 0x42200000    # 40.0f

    .line 50
    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->leftMargin:F

    .line 56
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->LEGEND_LEFT_MARGIN:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 57
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->LEGEND_TO_TEXT_SPACING:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 58
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->TEXT_RIGHT_MARGIN:F

    .line 59
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->LEGEND_BAR_WIDTH:F

    .line 69
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->mode:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->data:Ljava/util/List;

    const/16 p1, 0xbc

    const/16 p2, 0xce

    const/16 v0, 0xff

    .line 36
    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_1:I

    const/16 p1, 0x86

    const/16 p2, 0xb1

    .line 37
    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_2:I

    const/16 p1, 0x52

    const/16 p2, 0x82

    .line 38
    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_3:I

    const/16 p1, 0x8b

    const/4 p2, 0x6

    const/16 v0, 0xfd

    .line 39
    invoke-static {v0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_4:I

    const p1, -0x777778

    .line 41
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->AXIS_COLOR:I

    const/high16 p1, -0x1000000

    .line 42
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->TEXT_COLOR:I

    const p1, -0x333334

    .line 43
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->GRID_COLOR:I

    const/high16 p1, 0x41f00000    # 30.0f

    .line 44
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->TEXT_SIZE:F

    const/high16 p2, 0x40000000    # 2.0f

    .line 45
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->AXIS_LINE_WIDTH:F

    const/high16 p2, 0x40c00000    # 6.0f

    .line 46
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->BOLD_LINE_WIDTH:F

    const/high16 p2, 0x41200000    # 10.0f

    .line 47
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->DASH_WIDTH:F

    const/high16 v0, 0x42200000    # 40.0f

    .line 50
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->leftMargin:F

    .line 56
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->LEGEND_LEFT_MARGIN:F

    const/high16 p2, 0x40a00000    # 5.0f

    .line 57
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->LEGEND_TO_TEXT_SPACING:F

    const/high16 p2, 0x41a00000    # 20.0f

    .line 58
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->TEXT_RIGHT_MARGIN:F

    .line 59
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->LEGEND_BAR_WIDTH:F

    .line 74
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->mode:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->data:Ljava/util/List;

    const/16 p1, 0xbc

    const/16 p2, 0xce

    const/16 p3, 0xff

    .line 36
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_1:I

    const/16 p1, 0x86

    const/16 p2, 0xb1

    .line 37
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_2:I

    const/16 p1, 0x52

    const/16 p2, 0x82

    .line 38
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_3:I

    const/16 p1, 0x8b

    const/4 p2, 0x6

    const/16 p3, 0xfd

    .line 39
    invoke-static {p3, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_4:I

    const p1, -0x777778

    .line 41
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->AXIS_COLOR:I

    const/high16 p1, -0x1000000

    .line 42
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->TEXT_COLOR:I

    const p1, -0x333334

    .line 43
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->GRID_COLOR:I

    const/high16 p1, 0x41f00000    # 30.0f

    .line 44
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->TEXT_SIZE:F

    const/high16 p2, 0x40000000    # 2.0f

    .line 45
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->AXIS_LINE_WIDTH:F

    const/high16 p2, 0x40c00000    # 6.0f

    .line 46
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->BOLD_LINE_WIDTH:F

    const/high16 p2, 0x41200000    # 10.0f

    .line 47
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->DASH_WIDTH:F

    const/high16 p3, 0x42200000    # 40.0f

    .line 50
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->leftMargin:F

    .line 56
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->LEGEND_LEFT_MARGIN:F

    const/high16 p2, 0x40a00000    # 5.0f

    .line 57
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->LEGEND_TO_TEXT_SPACING:F

    const/high16 p2, 0x41a00000    # 20.0f

    .line 58
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->TEXT_RIGHT_MARGIN:F

    .line 59
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->LEGEND_BAR_WIDTH:F

    .line 79
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->init()V

    return-void
.end method

.method private drawDataBars(Landroid/graphics/Canvas;FFFFF)V
    .locals 11

    .line 262
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->data:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->getXLabelCount()I

    move-result v0

    sub-float/2addr p3, p2

    int-to-float v1, v0

    div-float/2addr p3, v1

    .line 266
    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->fixedBarWidth:F

    const v2, 0x3f666666    # 0.9f

    mul-float v2, v2, p3

    .line 267
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 269
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 270
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->data:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gez v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v5, v3, v4

    if-lez v5, :cond_2

    const/high16 v3, 0x42c80000    # 100.0f

    :cond_2
    div-float v4, v3, v4

    mul-float v4, v4, p6

    sub-float v7, p5, v4

    int-to-float v4, v2

    mul-float v4, v4, p3

    add-float/2addr v4, p2

    sub-float v5, p3, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v6, v4, v5

    add-float v8, v6, v1

    const/high16 v4, 0x41f00000    # 30.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_3

    .line 280
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_1:I

    goto :goto_1

    :cond_3
    const/high16 v4, 0x42700000    # 60.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_4

    .line 281
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_2:I

    goto :goto_1

    :cond_4
    const/high16 v4, 0x42a00000    # 80.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 282
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_3:I

    goto :goto_1

    .line 283
    :cond_5
    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_4:I

    .line 285
    :goto_1
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    iget-object v10, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->barPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move/from16 v9, p5

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method private drawGridAndLabels(Landroid/graphics/Canvas;FFFFF)V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x5

    .line 168
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 171
    aget v5, v2, v4

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v7, v5, v6

    mul-float v7, v7, p6

    sub-float v10, p5, v7

    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-eqz v7, :cond_1

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->dashGridPaint:Landroid/graphics/Paint;

    goto :goto_2

    .line 175
    :cond_1
    :goto_1
    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->getBoldGridPaint()Landroid/graphics/Paint;

    move-result-object v5

    :goto_2
    move-object v13, v5

    move v12, v10

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v11, p3

    .line 179
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    :cond_2
    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->getXLabelCount()I

    move-result v1

    sub-float v2, p3, p2

    int-to-float v4, v1

    div-float/2addr v2, v4

    const/4 v4, 0x0

    :goto_3
    const/high16 v5, 0x40000000    # 2.0f

    if-ge v4, v1, :cond_6

    .line 189
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->mode:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    sget-object v7, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->DAY:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    const/4 v8, 0x6

    if-ne v6, v7, :cond_3

    if-eq v4, v8, :cond_4

    const/16 v6, 0xc

    if-eq v4, v6, :cond_4

    const/16 v6, 0x12

    if-ne v4, v6, :cond_5

    goto :goto_4

    .line 192
    :cond_3
    iget-object v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->mode:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    sget-object v7, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->MONTH:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    if-ne v6, v7, :cond_4

    if-eq v4, v8, :cond_4

    const/16 v6, 0xe

    if-eq v4, v6, :cond_4

    const/16 v6, 0x15

    if-ne v4, v6, :cond_5

    :cond_4
    :goto_4
    int-to-float v6, v4

    mul-float v6, v6, v2

    add-float v6, p2, v6

    div-float v5, v2, v5

    add-float v15, v6, v5

    .line 202
    iget-object v5, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->dashGridPaint:Landroid/graphics/Paint;

    move/from16 v17, v15

    move-object/from16 v14, p1

    move/from16 v16, p4

    move/from16 v18, p5

    move-object/from16 v19, v5

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 207
    :cond_6
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->textPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_5
    if-ge v3, v1, :cond_8

    int-to-float v4, v3

    mul-float v4, v4, v2

    add-float v4, p2, v4

    div-float v6, v2, v5

    add-float/2addr v4, v6

    .line 210
    invoke-direct {v0, v3}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->getXLabel(I)Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    const/high16 v7, 0x41f00000    # 30.0f

    add-float v7, p5, v7

    const/high16 v8, 0x41200000    # 10.0f

    add-float/2addr v7, v8

    .line 212
    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    invoke-virtual {v14, v6, v4, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_7
    move-object/from16 v14, p1

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
        0x42a00000    # 80.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method private drawLegendBar(Landroid/graphics/Canvas;FFFFF)V
    .locals 22

    move-object/from16 v0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, p6, v1

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float v2, v2, v1

    sub-float v5, p5, v2

    const/high16 v2, 0x42700000    # 60.0f

    mul-float v2, v2, v1

    sub-float v10, p5, v2

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float v1, v1, v2

    sub-float v15, p5, v1

    .line 230
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->barPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_1:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->legendLeft:F

    iget v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->legendRight:F

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move/from16 v7, p5

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->barPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_2:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iget v4, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->legendLeft:F

    iget v6, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->legendRight:F

    iget-object v8, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->barPaint:Landroid/graphics/Paint;

    move v7, v5

    move v5, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 234
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->barPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_3:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget v7, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->legendLeft:F

    iget v9, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->legendRight:F

    iget-object v11, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v8, v15

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->barPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->COLOR_4:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget v12, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->legendLeft:F

    iget v14, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->legendRight:F

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move/from16 v13, p4

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 240
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->axisPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 241
    iget v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->legendLeft:F

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->legendRight:F

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->axisPaint:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v18, p4

    move/from16 v20, p5

    move/from16 v17, v1

    move/from16 v19, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawYAxisLabels(Landroid/graphics/Canvas;FFFFF)V
    .locals 4

    const/4 p2, 0x5

    .line 248
    new-array p3, p2, [F

    fill-array-data p3, :array_0

    .line 249
    iget-object p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->textPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 250
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->getWidth()I

    move-result p4

    int-to-float p4, p4

    const/high16 v0, 0x41a00000    # 20.0f

    sub-float/2addr p4, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 252
    aget v1, p3, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, v1, v2

    mul-float v2, v2, p6

    sub-float v2, p5, v2

    float-to-int v1, v1

    .line 254
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
        0x42a00000    # 80.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method private getBoldGridPaint()Landroid/graphics/Paint;
    .locals 2

    .line 323
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->gridPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/high16 v1, 0x40c00000    # 6.0f

    .line 324
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    .line 325
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-object v0
.end method

.method private getXLabel(I)Ljava/lang/String;
    .locals 10

    .line 300
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->mode:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->ordinal()I

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_4

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    return-object v1

    :cond_0
    add-int/2addr p1, v3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1e

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 314
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 309
    :cond_3
    const-string/jumbo v8, "\u5468\u4e94"

    const-string/jumbo v9, "\u5468\u516d"

    const-string/jumbo v3, "\u5468\u65e5"

    const-string/jumbo v4, "\u5468\u4e00"

    const-string/jumbo v5, "\u5468\u4e8c"

    const-string/jumbo v6, "\u5468\u4e09"

    const-string/jumbo v7, "\u5468\u56db"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 310
    rem-int/2addr p1, v2

    aget-object p1, v0, p1

    return-object p1

    :cond_4
    if-nez p1, :cond_5

    .line 302
    const-string p1, "00:00"

    return-object p1

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 303
    const-string p1, "06:00"

    return-object p1

    :cond_6
    const/16 v0, 0xc

    if-ne p1, v0, :cond_7

    .line 304
    const-string p1, "12:00"

    return-object p1

    :cond_7
    const/16 v0, 0x12

    if-ne p1, v0, :cond_8

    .line 305
    const-string p1, "18:00"

    return-object p1

    :cond_8
    const/16 v0, 0x17

    if-ne p1, v0, :cond_9

    .line 306
    const-string p1, "24:00"

    return-object p1

    :cond_9
    return-object v1
.end method

.method private getXLabelCount()I
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->mode:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x1f

    return v0

    :cond_1
    const/4 v0, 0x7

    return v0

    :cond_2
    const/16 v0, 0x18

    return v0
.end method

.method private init()V
    .locals 5

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->axisPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    .line 84
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->axisPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->axisPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->gridPaint:Landroid/graphics/Paint;

    const v3, -0x333334

    .line 89
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->gridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->dashGridPaint:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->dashGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->dashGridPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    .line 99
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->barPaint:Landroid/graphics/Paint;

    .line 103
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 146
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 148
    iget v5, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartBottom:F

    iget v4, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartTop:F

    sub-float v12, v5, v4

    const/4 v0, 0x0

    cmpg-float v0, v12, v0

    if-gtz v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartLeft:F

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartRight:F

    move-object v0, p0

    move-object v1, p1

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->drawGridAndLabels(Landroid/graphics/Canvas;FFFFF)V

    move-object v7, v1

    move-object v6, v0

    .line 155
    iget v8, v6, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartLeft:F

    iget v9, v6, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartRight:F

    iget v10, v6, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartTop:F

    iget v11, v6, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartBottom:F

    invoke-direct/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->drawLegendBar(Landroid/graphics/Canvas;FFFFF)V

    .line 158
    iget v8, v6, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartLeft:F

    iget v9, v6, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartRight:F

    iget v10, v6, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartTop:F

    iget v11, v6, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartBottom:F

    invoke-direct/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->drawYAxisLabels(Landroid/graphics/Canvas;FFFFF)V

    .line 161
    iget v8, v6, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartLeft:F

    iget v9, v6, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartRight:F

    iget v10, v6, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartTop:F

    iget v11, v6, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartBottom:F

    invoke-direct/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->drawDataBars(Landroid/graphics/Canvas;FFFFF)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 334
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 335
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 336
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 337
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x320

    if-ne v0, v2, :cond_1

    .line 345
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0x320

    :goto_0
    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x258

    if-ne v1, v2, :cond_3

    .line 353
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_3
    const/16 p2, 0x258

    .line 358
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 122
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->textPaint:Landroid/graphics/Paint;

    const-string p2, "100"

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x42340000    # 45.0f

    add-float/2addr p2, p1

    const/high16 p3, 0x41a00000    # 20.0f

    add-float/2addr p2, p3

    .line 128
    iget p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->leftMargin:F

    iput p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartLeft:F

    .line 129
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->getWidth()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p4, p2

    iput p4, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartRight:F

    .line 130
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartTop:F

    .line 131
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 p4, 0x428c0000    # 70.0f

    sub-float/2addr p2, p4

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartBottom:F

    .line 134
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartRight:F

    const/high16 p4, 0x41200000    # 10.0f

    add-float/2addr p2, p4

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->legendLeft:F

    .line 135
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, p3

    sub-float/2addr p2, p1

    const/high16 p1, 0x40a00000    # 5.0f

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->legendRight:F

    .line 139
    iget p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartRight:F

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->chartLeft:F

    sub-float/2addr p1, p2

    const/high16 p2, 0x41f80000    # 31.0f

    div-float/2addr p1, p2

    const p2, 0x3e4ccccd    # 0.2f

    mul-float p1, p1, p2

    .line 140
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->fixedBarWidth:F

    .line 141
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->fixedBarWidth:F

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->invalidate()V

    return-void
.end method

.method public setMode(Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->mode:Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView$Mode;

    .line 108
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/widget/CustomBarChartView;->invalidate()V

    return-void
.end method
