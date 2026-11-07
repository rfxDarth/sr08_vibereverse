.class public Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;
.super Ljava/lang/Object;
.source "TemperatureChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DayData"
.end annotation


# instance fields
.field public temperature:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/TemperatureChartView$DayData;->temperature:F

    return-void
.end method
