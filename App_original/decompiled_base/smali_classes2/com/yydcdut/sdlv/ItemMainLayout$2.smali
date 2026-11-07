.class Lcom/yydcdut/sdlv/ItemMainLayout$2;
.super Landroid/view/animation/Animation;
.source "ItemMainLayout.java"


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


# direct methods
.method constructor <init>(Lcom/yydcdut/sdlv/ItemMainLayout;I)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout$2;->this$0:Lcom/yydcdut/sdlv/ItemMainLayout;

    iput p2, p0, Lcom/yydcdut/sdlv/ItemMainLayout$2;->val$height:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 364
    iget-object p2, p0, Lcom/yydcdut/sdlv/ItemMainLayout$2;->this$0:Lcom/yydcdut/sdlv/ItemMainLayout;

    invoke-virtual {p2}, Lcom/yydcdut/sdlv/ItemMainLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 365
    iget v0, p0, Lcom/yydcdut/sdlv/ItemMainLayout$2;->val$height:I

    int-to-float v1, v0

    mul-float v1, v1, p1

    float-to-int p1, v1

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 366
    iget-object p1, p0, Lcom/yydcdut/sdlv/ItemMainLayout$2;->this$0:Lcom/yydcdut/sdlv/ItemMainLayout;

    invoke-virtual {p1, p2}, Lcom/yydcdut/sdlv/ItemMainLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
