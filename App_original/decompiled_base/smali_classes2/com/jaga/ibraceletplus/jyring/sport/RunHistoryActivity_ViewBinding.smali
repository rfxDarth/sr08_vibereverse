.class public Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RunHistoryActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;

    .line 27
    const-string v0, "field \'lvRunHistory\'"

    const-class v1, Landroid/widget/ListView;

    const v2, 0x7f0a0293

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->lvRunHistory:Landroid/widget/ListView;

    .line 28
    const-string v0, "field \'tvDistance\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0495

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvDistance:Landroid/widget/TextView;

    .line 29
    const-string v0, "field \'tvUnit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0540

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvUnit:Landroid/widget/TextView;

    .line 30
    const-string v0, "field \'tvTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0535

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvTime:Landroid/widget/TextView;

    .line 31
    const-string v0, "field \'tvCalor\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a046e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvCalor:Landroid/widget/TextView;

    .line 32
    const-string v0, "field \'tvCount\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a047f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvCount:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;

    .line 42
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->lvRunHistory:Landroid/widget/ListView;

    .line 43
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvDistance:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvUnit:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvTime:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvCalor:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunHistoryActivity;->tvCount:Landroid/widget/TextView;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
