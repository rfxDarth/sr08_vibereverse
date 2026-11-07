.class Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;
.super Landroid/view/animation/Animation;
.source "HeartPolylineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistogramAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;


# direct methods
.method private constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;)V
    .locals 0

    .line 323
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 325
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 327
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$200(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    return-void

    .line 330
    :cond_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$200(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object p2

    .line 332
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$200(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$200(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 337
    :goto_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$200(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    sub-int/2addr v2, v0

    aget-object p2, p2, v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v0

    if-gez v2, :cond_3

    .line 340
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$1300(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    cmpl-float v0, p2, v1

    if-lez v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$1300(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;

    move-result-object v0

    sub-float/2addr p2, v1

    mul-float p2, p2, p1

    add-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$1300(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;

    move-result-object v0

    sub-float p2, v1, p2

    mul-float p2, p2, p1

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 346
    :goto_1
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$1200(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {p2, v0}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$1402(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;F)F

    goto :goto_2

    .line 348
    :cond_3
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$1300(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 349
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$1300(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)Ljava/util/Queue;

    move-result-object p1

    mul-float p2, p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 350
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$1200(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v0

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$1402(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;F)F

    .line 352
    :goto_2
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$HistogramAnimation;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->invalidate()V

    return-void
.end method
