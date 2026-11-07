.class Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$3;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->setSeletion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

.field final synthetic val$p:I


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$3;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$3;->val$p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$3;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;

    iget v1, p0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView$3;->val$p:I

    iget v2, v0, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->itemHeight:I

    mul-int v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/widget/wheelview/WheelView;->smoothScrollTo(II)V

    return-void
.end method
