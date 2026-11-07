.class Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->getScrollY()I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->initialY:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_2

    .line 117
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget v0, v0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->initialY:I

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->itemHeight:I

    rem-int/2addr v0, v1

    .line 118
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->initialY:I

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->itemHeight:I

    div-int/2addr v1, v2

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->offset:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->selectedIndex:I

    .line 124
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->access$000(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;)V

    return-void

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->itemHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$1;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;II)V

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    new-instance v3, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$2;-><init>(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;II)V

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->getScrollY()I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->initialY:I

    .line 152
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->scrollerTask:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->newCheck:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
