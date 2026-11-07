.class Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;
.super Ljava/lang/Object;
.source "HeartPolylineView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)V
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
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 65
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$200(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 66
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$300(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$400(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)F

    move-result v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$300(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr p1, v1

    .line 68
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$600(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)I

    move-result p1

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$700(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    int-to-float p1, p1

    mul-float v2, v2, p1

    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$700(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    float-to-int p1, v2

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$502(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;F)F

    .line 70
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$802(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;Z)Z

    .line 71
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$200(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$200(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;

    move-result-object p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$900(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$1000(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
