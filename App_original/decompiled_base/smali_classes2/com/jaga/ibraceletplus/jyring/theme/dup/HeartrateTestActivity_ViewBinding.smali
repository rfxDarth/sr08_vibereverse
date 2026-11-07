.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;
.super Ljava/lang/Object;
.source "HeartrateTestActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

.field private view7f0a0213:Landroid/view/View;

.field private view7f0a038a:Landroid/view/View;

.field private view7f0a0452:Landroid/view/View;

.field private view7f0a0454:Landroid/view/View;

.field private view7f0a04ee:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;Landroid/view/View;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    .line 42
    const-string v0, "field \'tvPeriod\' and method \'onViewClicked\'"

    const v1, 0x7f0a04ee

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    const-string v2, "field \'tvPeriod\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvPeriod:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a04ee:Landroid/view/View;

    .line 45
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const-string v0, "field \'tvPeriodName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04ef

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvPeriodName:Landroid/widget/TextView;

    .line 52
    const-string v0, "field \'tvTitle\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a053c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvTitle:Landroid/widget/TextView;

    .line 53
    const-string v0, "field \'ivSync\' and method \'OnClickivSync\'"

    const v1, 0x7f0a0213

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 54
    const-string v2, "field \'ivSync\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->ivSync:Landroid/widget/ImageView;

    .line 55
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 56
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const-string v0, "field \'sbEnable\' and method \'OnCheckedChangedsbEnable\'"

    const v1, 0x7f0a038a

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 63
    const-string v2, "field \'sbEnable\'"

    const-class v3, Landroid/widget/Switch;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->sbEnable:Landroid/widget/Switch;

    .line 64
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a038a:Landroid/view/View;

    .line 65
    check-cast v0, Landroid/widget/CompoundButton;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    const-string v0, "field \'tvAlarmStartTime\' and method \'OnClicktvAlarmStartTime\'"

    const v1, 0x7f0a0454

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 72
    const-string v2, "field \'tvAlarmStartTime\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvAlarmStartTime:Landroid/widget/TextView;

    .line 73
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a0454:Landroid/view/View;

    .line 74
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const-string v0, "field \'tvAlarmEndTime\' and method \'OnClicktvAlarmEndTime\'"

    const v1, 0x7f0a0452

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 81
    const-string v2, "field \'tvAlarmEndTime\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvAlarmEndTime:Landroid/widget/TextView;

    .line 82
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a0452:Landroid/view/View;

    .line 83
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding$5;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const-string v0, "field \'rlPeriod\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a036a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->rlPeriod:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    .line 99
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvPeriod:Landroid/widget/TextView;

    .line 100
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvPeriodName:Landroid/widget/TextView;

    .line 101
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvTitle:Landroid/widget/TextView;

    .line 102
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->ivSync:Landroid/widget/ImageView;

    .line 103
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->sbEnable:Landroid/widget/Switch;

    .line 104
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvAlarmStartTime:Landroid/widget/TextView;

    .line 105
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvAlarmEndTime:Landroid/widget/TextView;

    .line 106
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->rlPeriod:Landroid/widget/RelativeLayout;

    .line 108
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a04ee:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a04ee:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a038a:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a038a:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a0454:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a0454:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a0452:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity_ViewBinding;->view7f0a0452:Landroid/view/View;

    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
