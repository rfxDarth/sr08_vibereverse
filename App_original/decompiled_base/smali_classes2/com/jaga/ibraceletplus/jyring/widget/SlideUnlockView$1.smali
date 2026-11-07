.class Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$1;
.super Landroid/os/Handler;
.source "SlideUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 71
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->access$000(Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->access$000(Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;)F

    move-result v0

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->access$100(Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->access$002(Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;F)F

    .line 74
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->postInvalidate()V

    .line 76
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    iput v2, p1, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->currentState:I

    return-void

    .line 82
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v2, :cond_2

    .line 83
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->access$000(Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;)F

    move-result v0

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->access$100(Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->access$002(Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;F)F

    .line 85
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->postInvalidate()V

    :cond_2
    return-void
.end method
