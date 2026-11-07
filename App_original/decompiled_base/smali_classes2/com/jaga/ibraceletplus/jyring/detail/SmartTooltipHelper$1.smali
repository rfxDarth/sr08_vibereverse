.class Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$1;
.super Ljava/lang/Object;
.source "SmartTooltipHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/LineChartView;Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;)Llecho/lib/hellocharts/model/PointValue;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 65
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->access$200(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;)Llecho/lib/hellocharts/model/PointValue;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->access$300(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;Llecho/lib/hellocharts/model/PointValue;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->access$102(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;Z)Z

    .line 71
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->access$400(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;)V

    .line 72
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->access$202(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;Llecho/lib/hellocharts/model/PointValue;)Llecho/lib/hellocharts/model/PointValue;

    goto :goto_0

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;->access$102(Lcom/jaga/ibraceletplus/jyring/detail/SmartTooltipHelper;Z)Z

    :cond_3
    :goto_0
    return p2
.end method
