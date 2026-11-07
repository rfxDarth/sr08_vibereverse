.class Lyanzhikai/ruler/BooheeRuler$1;
.super Ljava/lang/Object;
.source "BooheeRuler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyanzhikai/ruler/BooheeRuler;->initDrawable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyanzhikai/ruler/BooheeRuler;


# direct methods
.method constructor <init>(Lyanzhikai/ruler/BooheeRuler;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    .line 180
    iget-object v0, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v0}, Lyanzhikai/ruler/BooheeRuler;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 181
    iget-object v0, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v0}, Lyanzhikai/ruler/BooheeRuler;->access$000(Lyanzhikai/ruler/BooheeRuler;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v0}, Lyanzhikai/ruler/BooheeRuler;->access$300(Lyanzhikai/ruler/BooheeRuler;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getWidth()I

    move-result v1

    iget-object v4, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v4}, Lyanzhikai/ruler/BooheeRuler;->access$100(Lyanzhikai/ruler/BooheeRuler;)I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getHeight()I

    move-result v4

    iget-object v5, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v5}, Lyanzhikai/ruler/BooheeRuler;->access$200(Lyanzhikai/ruler/BooheeRuler;)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v3

    iget-object v5, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    .line 196
    invoke-virtual {v5}, Lyanzhikai/ruler/BooheeRuler;->getWidth()I

    move-result v5

    iget-object v6, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v6}, Lyanzhikai/ruler/BooheeRuler;->getHeight()I

    move-result v6

    iget-object v7, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v7}, Lyanzhikai/ruler/BooheeRuler;->access$200(Lyanzhikai/ruler/BooheeRuler;)I

    move-result v7

    add-int/2addr v6, v7

    div-int/2addr v6, v3

    .line 195
    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v0}, Lyanzhikai/ruler/BooheeRuler;->access$300(Lyanzhikai/ruler/BooheeRuler;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getHeight()I

    move-result v1

    iget-object v4, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v4}, Lyanzhikai/ruler/BooheeRuler;->access$200(Lyanzhikai/ruler/BooheeRuler;)I

    move-result v4

    sub-int/2addr v1, v4

    div-int/2addr v1, v3

    iget-object v4, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    .line 192
    invoke-static {v4}, Lyanzhikai/ruler/BooheeRuler;->access$100(Lyanzhikai/ruler/BooheeRuler;)I

    move-result v4

    iget-object v5, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v5}, Lyanzhikai/ruler/BooheeRuler;->getHeight()I

    move-result v5

    iget-object v6, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v6}, Lyanzhikai/ruler/BooheeRuler;->access$200(Lyanzhikai/ruler/BooheeRuler;)I

    move-result v6

    add-int/2addr v5, v6

    div-int/2addr v5, v3

    .line 191
    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v0}, Lyanzhikai/ruler/BooheeRuler;->access$300(Lyanzhikai/ruler/BooheeRuler;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getWidth()I

    move-result v1

    iget-object v4, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v4}, Lyanzhikai/ruler/BooheeRuler;->access$100(Lyanzhikai/ruler/BooheeRuler;)I

    move-result v4

    sub-int/2addr v1, v4

    div-int/2addr v1, v3

    iget-object v4, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getHeight()I

    move-result v4

    iget-object v5, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v5}, Lyanzhikai/ruler/BooheeRuler;->access$200(Lyanzhikai/ruler/BooheeRuler;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    .line 188
    invoke-virtual {v5}, Lyanzhikai/ruler/BooheeRuler;->getWidth()I

    move-result v5

    iget-object v6, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v6}, Lyanzhikai/ruler/BooheeRuler;->access$100(Lyanzhikai/ruler/BooheeRuler;)I

    move-result v6

    add-int/2addr v5, v6

    div-int/2addr v5, v3

    iget-object v3, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v3}, Lyanzhikai/ruler/BooheeRuler;->getHeight()I

    move-result v3

    .line 187
    invoke-virtual {v0, v1, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 183
    :cond_3
    iget-object v0, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v0}, Lyanzhikai/ruler/BooheeRuler;->access$300(Lyanzhikai/ruler/BooheeRuler;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-virtual {v1}, Lyanzhikai/ruler/BooheeRuler;->getWidth()I

    move-result v1

    iget-object v4, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v4}, Lyanzhikai/ruler/BooheeRuler;->access$100(Lyanzhikai/ruler/BooheeRuler;)I

    move-result v4

    sub-int/2addr v1, v4

    div-int/2addr v1, v3

    iget-object v4, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    .line 184
    invoke-virtual {v4}, Lyanzhikai/ruler/BooheeRuler;->getWidth()I

    move-result v4

    iget-object v5, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v5}, Lyanzhikai/ruler/BooheeRuler;->access$100(Lyanzhikai/ruler/BooheeRuler;)I

    move-result v5

    add-int/2addr v4, v5

    div-int/2addr v4, v3

    iget-object v3, p0, Lyanzhikai/ruler/BooheeRuler$1;->this$0:Lyanzhikai/ruler/BooheeRuler;

    invoke-static {v3}, Lyanzhikai/ruler/BooheeRuler;->access$200(Lyanzhikai/ruler/BooheeRuler;)I

    move-result v3

    .line 183
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    return v2
.end method
