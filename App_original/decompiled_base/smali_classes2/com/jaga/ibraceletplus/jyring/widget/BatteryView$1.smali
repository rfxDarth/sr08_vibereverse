.class Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;
.super Ljava/lang/Object;
.source "BatteryView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 99
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 101
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$100(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F

    move-result v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$200(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F

    move-result v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$100(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$002(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;F)F

    .line 102
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$400(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F

    move-result v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$500(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F

    move-result v2

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$400(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$302(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;F)F

    .line 103
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->postInvalidate()V

    .line 105
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$000(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$200(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F

    move-result v0

    float-to-int v0, v0

    if-ne p1, v0, :cond_0

    .line 106
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$200(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$102(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;F)F

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$300(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$500(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F

    move-result v0

    float-to-int v0, v0

    if-ne p1, v0, :cond_1

    .line 109
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$500(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;->access$402(Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;F)F

    :cond_1
    return-void
.end method
