.class Lcom/jaga/ibraceletplus/jyring/util/ViewUtil$1;
.super Ljava/lang/Object;
.source "ViewUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->translate(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageView:Landroid/view/View;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil$1;->val$imageView:Landroid/view/View;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil$1;->val$imageView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->access$008()I

    .line 118
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->translate(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil$1;->val$imageView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
