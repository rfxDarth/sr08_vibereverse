.class Lcom/yydcdut/sdlv/ItemMainLayout$1;
.super Ljava/lang/Object;
.source "ItemMainLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yydcdut/sdlv/ItemMainLayout;->deleteItem(Lcom/yydcdut/sdlv/ItemMainLayout$OnItemDeleteListenerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yydcdut/sdlv/ItemMainLayout;

.field final synthetic val$height:I

.field final synthetic val$onItemDeleteListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemDeleteListenerProxy;


# direct methods
.method constructor <init>(Lcom/yydcdut/sdlv/ItemMainLayout;Lcom/yydcdut/sdlv/ItemMainLayout$OnItemDeleteListenerProxy;I)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout$1;->this$0:Lcom/yydcdut/sdlv/ItemMainLayout;

    iput-object p2, p0, Lcom/yydcdut/sdlv/ItemMainLayout$1;->val$onItemDeleteListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemDeleteListenerProxy;

    iput p3, p0, Lcom/yydcdut/sdlv/ItemMainLayout$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 347
    iget-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout$1;->this$0:Lcom/yydcdut/sdlv/ItemMainLayout;

    invoke-virtual {p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 348
    iget v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout$1;->val$height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 349
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout$1;->this$0:Lcom/yydcdut/sdlv/ItemMainLayout;

    invoke-virtual {v0, p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout$1;->val$onItemDeleteListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemDeleteListenerProxy;

    if-eqz p1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout$1;->this$0:Lcom/yydcdut/sdlv/ItemMainLayout;

    invoke-interface {p1, v0}, Lcom/yydcdut/sdlv/ItemMainLayout$OnItemDeleteListenerProxy;->onDelete(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 340
    iget-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout$1;->val$onItemDeleteListenerProxy:Lcom/yydcdut/sdlv/ItemMainLayout$OnItemDeleteListenerProxy;

    if-eqz p1, :cond_0

    .line 341
    invoke-interface {p1}, Lcom/yydcdut/sdlv/ItemMainLayout$OnItemDeleteListenerProxy;->onDeleteBegin()V

    :cond_0
    return-void
.end method
