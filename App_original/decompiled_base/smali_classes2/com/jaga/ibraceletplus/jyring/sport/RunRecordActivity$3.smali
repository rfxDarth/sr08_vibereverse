.class Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$3;
.super Ljava/lang/Object;
.source "RunRecordActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 263
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 264
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$1400(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$1500(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$1400(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 265
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bStop:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    float-to-int v0, v0

    .line 266
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 267
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bStop:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
