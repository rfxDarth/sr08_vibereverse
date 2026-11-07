.class Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;
.super Landroid/view/animation/Animation;
.source "HeartPolylineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationTranslate"
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

    .line 312
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$1;)V
    .locals 0

    .line 312
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 314
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    .line 316
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$802(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;Z)Z

    .line 317
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$1200(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {p2, v0}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->access$1102(Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;F)F

    .line 318
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView$AnimationTranslate;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/HeartPolylineView;->invalidate()V

    :cond_0
    return-void
.end method
