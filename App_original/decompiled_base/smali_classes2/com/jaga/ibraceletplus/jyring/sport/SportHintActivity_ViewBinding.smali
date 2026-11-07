.class public Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SportHintActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;

.field private view7f0a0472:Landroid/view/View;

.field private view7f0a04fd:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;Landroid/view/View;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;

    .line 32
    const-string v0, "field \'tvResume\' and method \'onTvResumeClicked\'"

    const v1, 0x7f0a04fd

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    const-string v2, "field \'tvResume\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->tvResume:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding;->view7f0a04fd:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const-string v0, "field \'tvCancel\' and method \'onTvCancelClicked\'"

    const v1, 0x7f0a0472

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 42
    const-string v2, "field \'tvCancel\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->tvCancel:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding;->view7f0a0472:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const-string v0, "field \'tvSportName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0514

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->tvSportName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;

    .line 60
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->tvResume:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->tvCancel:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity;->tvSportName:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding;->view7f0a04fd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding;->view7f0a04fd:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding;->view7f0a0472:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/SportHintActivity_ViewBinding;->view7f0a0472:Landroid/view/View;

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
