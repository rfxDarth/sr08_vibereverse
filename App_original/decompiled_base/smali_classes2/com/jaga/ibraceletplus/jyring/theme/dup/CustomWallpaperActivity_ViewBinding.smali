.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CustomWallpaperActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

.field private view7f0a009c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    .line 31
    const-string v0, "field \'tvTimePos\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0539

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvTimePos:Landroid/widget/TextView;

    .line 32
    const-string v0, "field \'tvTimeUp\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a053b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvTimeUp:Landroid/widget/TextView;

    .line 33
    const-string v0, "field \'tvTimeBottom\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0536

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvTimeBottom:Landroid/widget/TextView;

    .line 34
    const-string v0, "field \'tvFontColor\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04a9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvFontColor:Landroid/widget/TextView;

    .line 35
    const-string v0, "field \'btUpdate\' and method \'OnClickbUpdate\'"

    const v1, 0x7f0a009c

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 36
    const-string v0, "field \'btUpdate\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->btUpdate:Landroid/widget/Button;

    .line 37
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity_ViewBinding;->view7f0a009c:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;

    .line 53
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvTimePos:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvTimeUp:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvTimeBottom:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->tvFontColor:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity;->btUpdate:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity_ViewBinding;->view7f0a009c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/CustomWallpaperActivity_ViewBinding;->view7f0a009c:Landroid/view/View;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
