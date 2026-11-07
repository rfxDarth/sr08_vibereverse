.class public Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;
.super Ljava/lang/Object;
.source "TemperatureChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeekMonthData"
.end annotation


# instance fields
.field public maxTemp:F

.field public minTemp:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->minTemp:F

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$WeekMonthData;->maxTemp:F

    return-void
.end method
