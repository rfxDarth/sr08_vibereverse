.class public Llecho/lib/hellocharts/view/PreviewLineChartView;
.super Llecho/lib/hellocharts/view/LineChartView;
.source "PreviewLineChartView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewLineChartView"


# instance fields
.field protected previewChartRenderer:Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/view/PreviewLineChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Llecho/lib/hellocharts/view/PreviewLineChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/LineChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p2, Llecho/lib/hellocharts/computator/PreviewChartComputator;

    invoke-direct {p2}, Llecho/lib/hellocharts/computator/PreviewChartComputator;-><init>()V

    iput-object p2, p0, Llecho/lib/hellocharts/view/PreviewLineChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 37
    new-instance p2, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;

    invoke-direct {p2, p1, p0, p0}, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V

    iput-object p2, p0, Llecho/lib/hellocharts/view/PreviewLineChartView;->previewChartRenderer:Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;

    .line 38
    new-instance p2, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;

    invoke-direct {p2, p1, p0}, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    iput-object p2, p0, Llecho/lib/hellocharts/view/PreviewLineChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    .line 39
    iget-object p1, p0, Llecho/lib/hellocharts/view/PreviewLineChartView;->previewChartRenderer:Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;

    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/view/PreviewLineChartView;->setChartRenderer(Llecho/lib/hellocharts/renderer/ChartRenderer;)V

    .line 40
    invoke-static {}, Llecho/lib/hellocharts/model/LineChartData;->generateDummyData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object p1

    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/view/PreviewLineChartView;->setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 4

    .line 58
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/PreviewLineChartView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 59
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/PreviewLineChartView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/PreviewLineChartView;->computeHorizontalScrollExtent()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-gez p1, :cond_2

    if-lez v0, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public getPreviewColor()I
    .locals 1

    .line 44
    iget-object v0, p0, Llecho/lib/hellocharts/view/PreviewLineChartView;->previewChartRenderer:Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->getPreviewColor()I

    move-result v0

    return v0
.end method

.method public setPreviewColor(I)V
    .locals 2

    .line 48
    sget-boolean v0, Llecho/lib/hellocharts/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "PreviewLineChartView"

    const-string v1, "Changing preview area color"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/view/PreviewLineChartView;->previewChartRenderer:Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->setPreviewColor(I)V

    .line 53
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method
