.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EditlistActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

.field private view7f0a0058:Landroid/view/View;

.field private view7f0a007f:Landroid/view/View;

.field private view7f0a016b:Landroid/view/View;

.field private view7f0a0382:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)V
    .locals 1

    .line 30
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;Landroid/view/View;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    .line 38
    const-string v0, "field \'toolbar\'"

    const-class v1, Landroid/widget/Toolbar;

    const v2, 0x7f0a02ea

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->toolbar:Landroid/widget/Toolbar;

    .line 39
    const-string v0, "field \'editListView\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    const v2, 0x7f0a015e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    .line 40
    const-string v0, "field \'allDeleteBtn\' and method \'allDelete\'"

    const v1, 0x7f0a0058

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    const-string v2, "field \'allDeleteBtn\'"

    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->allDeleteBtn:Landroid/widget/CheckBox;

    .line 42
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->view7f0a0058:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a007f

    .line 49
    const-string v1, "method \'goBack\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->view7f0a007f:Landroid/view/View;

    .line 51
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0382

    .line 57
    const-string v1, "method \'saveEdit\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->view7f0a0382:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a016b

    .line 65
    const-string v1, "method \'ensureDelete\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 66
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->view7f0a016b:Landroid/view/View;

    .line 67
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    .line 82
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->toolbar:Landroid/widget/Toolbar;

    .line 83
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    .line 84
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->allDeleteBtn:Landroid/widget/CheckBox;

    .line 86
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->view7f0a0058:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->view7f0a0058:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->view7f0a007f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->view7f0a007f:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->view7f0a0382:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->view7f0a0382:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->view7f0a016b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity_ViewBinding;->view7f0a016b:Landroid/view/View;

    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
