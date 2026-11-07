.class Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$2;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;

.field final synthetic val$divided:I

.field final synthetic val$remainder:I


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$2;->this$1:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$2;->val$remainder:I

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$2;->val$divided:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$2;->this$1:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$2;->this$1:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget v1, v1, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->initialY:I

    iget v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$2;->val$remainder:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->smoothScrollTo(II)V

    .line 140
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$2;->this$1:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$2;->val$divided:I

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$2;->this$1:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget v2, v2, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->offset:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->selectedIndex:I

    .line 141
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1$2;->this$1:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->access$000(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;)V

    return-void
.end method
