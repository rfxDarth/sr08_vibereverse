.class Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$ValueTouchListener;
.super Ljava/lang/Object;
.source "SmartTooltipHelper.java"

# interfaces
.implements Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;


# direct methods
.method private constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$ValueTouchListener;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$ValueTouchListener;-><init>(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;)V

    return-void
.end method


# virtual methods
.method public onValueDeselected()V
    .locals 0

    return-void
.end method

.method public onValueSelected(IILlecho/lib/hellocharts/model/PointValue;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$ValueTouchListener;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;

    invoke-static {p1, p3}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->access$202(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;Llecho/lib/hellocharts/model/PointValue;)Llecho/lib/hellocharts/model/PointValue;

    .line 84
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$ValueTouchListener;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->access$100(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$ValueTouchListener;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;

    invoke-static {p1, p3}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->access$300(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;Llecho/lib/hellocharts/model/PointValue;)V

    :cond_0
    return-void
.end method
