.class Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;
.super Ljava/lang/Object;
.source "TemperatureChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointF"
.end annotation


# instance fields
.field index:I

.field x:F

.field y:F


# direct methods
.method constructor <init>(FFI)V
    .locals 0

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->x:F

    .line 966
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->y:F

    .line 967
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$PointF;->index:I

    return-void
.end method
