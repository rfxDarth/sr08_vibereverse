.class public abstract Llecho/lib/hellocharts/model/AbstractChartData;
.super Ljava/lang/Object;
.source "AbstractChartData.java"

# interfaces
.implements Llecho/lib/hellocharts/model/ChartData;


# static fields
.field public static final DEFAULT_TEXT_SIZE_SP:I = 0xc


# instance fields
.field protected axisXBottom:Llecho/lib/hellocharts/model/Axis;

.field protected axisXTop:Llecho/lib/hellocharts/model/Axis;

.field protected axisYLeft:Llecho/lib/hellocharts/model/Axis;

.field protected axisYRight:Llecho/lib/hellocharts/model/Axis;

.field protected isValueLabelBackgroundEnabled:Z

.field protected isValueLabelBackgrountAuto:Z

.field protected isValueLabelTouchAll:Z

.field protected valueLabelBackgroundColor:I

.field protected valueLabelTextColor:I

.field protected valueLabelTextSize:I

.field protected valueLabelTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    const/16 v0, 0xc

    .line 18
    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelTouchAll:Z

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgroundEnabled:Z

    .line 41
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgrountAuto:Z

    .line 48
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    invoke-static {v0}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelBackgroundColor:I

    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/AbstractChartData;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    const/16 v0, 0xc

    .line 18
    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelTouchAll:Z

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgroundEnabled:Z

    .line 41
    iput-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgrountAuto:Z

    .line 48
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    invoke-static {v0}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelBackgroundColor:I

    .line 60
    iget-object v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    iget-object v1, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/Axis;-><init>(Llecho/lib/hellocharts/model/Axis;)V

    iput-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    .line 63
    :cond_0
    iget-object v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    iget-object v1, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/Axis;-><init>(Llecho/lib/hellocharts/model/Axis;)V

    iput-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    .line 66
    :cond_1
    iget-object v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    if-eqz v0, :cond_2

    .line 67
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    iget-object v1, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/Axis;-><init>(Llecho/lib/hellocharts/model/Axis;)V

    iput-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    .line 69
    :cond_2
    iget-object v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    if-eqz v0, :cond_3

    .line 70
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    iget-object v1, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/Axis;-><init>(Llecho/lib/hellocharts/model/Axis;)V

    iput-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    .line 72
    :cond_3
    iget v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    .line 73
    iget v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    .line 74
    iget-object p1, p1, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTypeface:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public getAxisXBottom()Llecho/lib/hellocharts/model/Axis;
    .locals 1

    .line 79
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    return-object v0
.end method

.method public getAxisXTop()Llecho/lib/hellocharts/model/Axis;
    .locals 1

    .line 99
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    return-object v0
.end method

.method public getAxisYLeft()Llecho/lib/hellocharts/model/Axis;
    .locals 1

    .line 89
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    return-object v0
.end method

.method public getAxisYRight()Llecho/lib/hellocharts/model/Axis;
    .locals 1

    .line 109
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    return-object v0
.end method

.method public getValueLabelBackgroundColor()I
    .locals 1

    .line 169
    iget v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelBackgroundColor:I

    return v0
.end method

.method public getValueLabelTextColor()I
    .locals 1

    .line 119
    iget v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    return v0
.end method

.method public getValueLabelTextSize()I
    .locals 1

    .line 129
    iget v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    return v0
.end method

.method public getValueLabelTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 139
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isValueLabelBackgroundAuto()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgrountAuto:Z

    return v0
.end method

.method public isValueLabelBackgroundEnabled()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgroundEnabled:Z

    return v0
.end method

.method public isValueLabelTouchAll()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelTouchAll:Z

    return v0
.end method

.method public setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V
    .locals 0

    .line 84
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    return-void
.end method

.method public setAxisXTop(Llecho/lib/hellocharts/model/Axis;)V
    .locals 0

    .line 104
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    return-void
.end method

.method public setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V
    .locals 0

    .line 94
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    return-void
.end method

.method public setAxisYRight(Llecho/lib/hellocharts/model/Axis;)V
    .locals 0

    .line 114
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    return-void
.end method

.method public setValueLabelBackgroundAuto(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgrountAuto:Z

    return-void
.end method

.method public setValueLabelBackgroundColor(I)V
    .locals 0

    .line 174
    iput p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelBackgroundColor:I

    return-void
.end method

.method public setValueLabelBackgroundEnabled(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgroundEnabled:Z

    return-void
.end method

.method public setValueLabelTextSize(I)V
    .locals 0

    .line 134
    iput p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    return-void
.end method

.method public setValueLabelTouchAll(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelTouchAll:Z

    return-void
.end method

.method public setValueLabelTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 144
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setValueLabelsTextColor(I)V
    .locals 0

    .line 124
    iput p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    return-void
.end method
