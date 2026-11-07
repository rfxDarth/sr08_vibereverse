.class public Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RunDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

.field private view7f0a01d5:Landroid/view/View;

.field private view7f0a020e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;Landroid/view/View;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    .line 33
    const-string v0, "field \'tvCalor\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a046e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvCalor:Landroid/widget/TextView;

    .line 34
    const-string v0, "field \'tvDistance\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0495

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvDistance:Landroid/widget/TextView;

    .line 35
    const-string v0, "field \'tvTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0535

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvTime:Landroid/widget/TextView;

    .line 36
    const-string v0, "field \'tvPace\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04ec

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvPace:Landroid/widget/TextView;

    .line 37
    const-string v0, "field \'tvUnit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0540

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvUnit:Landroid/widget/TextView;

    .line 38
    const-string v0, "field \'llCalorie\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0249

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->llCalorie:Landroid/widget/LinearLayout;

    .line 39
    const-string v0, "field \'llHeartrate\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0263

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->llHeartrate:Landroid/widget/LinearLayout;

    .line 40
    const-string v0, "field \'tvHeartrate\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04bb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvHeartrate:Landroid/widget/TextView;

    .line 41
    const-string v0, "field \'tvHeartrateDesc\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04bc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvHeartrateDesc:Landroid/widget/TextView;

    .line 42
    const-string v0, "field \'llStep\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a027b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->llStep:Landroid/widget/LinearLayout;

    .line 43
    const-string v0, "field \'tvStep\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0519

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvStep:Landroid/widget/TextView;

    .line 44
    const-string v0, "field \'tvSportName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0514

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvSportName:Landroid/widget/TextView;

    const v0, 0x7f0a01d5

    .line 45
    const-string v1, "method \'OnClickivBack\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding;->view7f0a01d5:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a020e

    .line 53
    const-string v1, "method \'OnClickivShare\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 54
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding;->view7f0a020e:Landroid/view/View;

    .line 55
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;

    .line 70
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvCalor:Landroid/widget/TextView;

    .line 71
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvDistance:Landroid/widget/TextView;

    .line 72
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvTime:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvPace:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvUnit:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->llCalorie:Landroid/widget/LinearLayout;

    .line 76
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->llHeartrate:Landroid/widget/LinearLayout;

    .line 77
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvHeartrate:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvHeartrateDesc:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->llStep:Landroid/widget/LinearLayout;

    .line 80
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvStep:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity;->tvSportName:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding;->view7f0a01d5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding;->view7f0a01d5:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding;->view7f0a020e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunDetailActivity_ViewBinding;->view7f0a020e:Landroid/view/View;

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
