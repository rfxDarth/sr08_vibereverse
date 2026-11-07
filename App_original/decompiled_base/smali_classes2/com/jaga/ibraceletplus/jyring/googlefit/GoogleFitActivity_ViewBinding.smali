.class public Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity_ViewBinding;
.super Ljava/lang/Object;
.source "GoogleFitActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;

.field private view7f0a006d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;

    .line 30
    const-string v0, "field \'bConnect\' and method \'OnClickbConnect\'"

    const v1, 0x7f0a006d

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 31
    const-string v0, "field \'bConnect\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->bConnect:Landroid/widget/Button;

    .line 32
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity_ViewBinding;->view7f0a006d:Landroid/view/View;

    .line 33
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;

    .line 48
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->bConnect:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity_ViewBinding;->view7f0a006d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity_ViewBinding;->view7f0a006d:Landroid/view/View;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
