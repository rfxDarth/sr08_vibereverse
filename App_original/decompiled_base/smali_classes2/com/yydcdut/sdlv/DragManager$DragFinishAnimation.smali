.class Lcom/yydcdut/sdlv/DragManager$DragFinishAnimation;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yydcdut/sdlv/DragManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragFinishAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yydcdut/sdlv/DragManager;


# direct methods
.method private constructor <init>(Lcom/yydcdut/sdlv/DragManager;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/yydcdut/sdlv/DragManager$DragFinishAnimation;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yydcdut/sdlv/DragManager;Lcom/yydcdut/sdlv/DragManager$1;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcom/yydcdut/sdlv/DragManager$DragFinishAnimation;-><init>(Lcom/yydcdut/sdlv/DragManager;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 254
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager$DragFinishAnimation;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {p1}, Lcom/yydcdut/sdlv/DragManager;->access$600(Lcom/yydcdut/sdlv/DragManager;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager$DragFinishAnimation;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {p1}, Lcom/yydcdut/sdlv/DragManager;->access$600(Lcom/yydcdut/sdlv/DragManager;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager$DragFinishAnimation;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {p1, v0}, Lcom/yydcdut/sdlv/DragManager;->access$602(Lcom/yydcdut/sdlv/DragManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager$DragFinishAnimation;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {p1}, Lcom/yydcdut/sdlv/DragManager;->access$700(Lcom/yydcdut/sdlv/DragManager;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager$DragFinishAnimation;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {p1}, Lcom/yydcdut/sdlv/DragManager;->access$700(Lcom/yydcdut/sdlv/DragManager;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 260
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager$DragFinishAnimation;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {p1}, Lcom/yydcdut/sdlv/DragManager;->access$800(Lcom/yydcdut/sdlv/DragManager;)Lcom/yydcdut/sdlv/ItemMainLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager$DragFinishAnimation;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {p1}, Lcom/yydcdut/sdlv/DragManager;->access$800(Lcom/yydcdut/sdlv/DragManager;)Lcom/yydcdut/sdlv/ItemMainLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yydcdut/sdlv/ItemMainLayout;->enableBackgroundDrawable()V

    .line 262
    iget-object p1, p0, Lcom/yydcdut/sdlv/DragManager$DragFinishAnimation;->this$0:Lcom/yydcdut/sdlv/DragManager;

    invoke-static {p1, v0}, Lcom/yydcdut/sdlv/DragManager;->access$802(Lcom/yydcdut/sdlv/DragManager;Lcom/yydcdut/sdlv/ItemMainLayout;)Lcom/yydcdut/sdlv/ItemMainLayout;

    :cond_1
    return-void
.end method
