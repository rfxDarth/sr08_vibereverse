.class Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$PointF;
.super Ljava/lang/Object;
.source "BloodPressureChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart;
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

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$PointF;->x:F

    .line 933
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$PointF;->y:F

    .line 934
    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BloodPressureChart$PointF;->index:I

    return-void
.end method
