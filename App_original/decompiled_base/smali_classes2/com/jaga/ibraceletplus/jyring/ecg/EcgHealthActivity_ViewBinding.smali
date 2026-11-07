.class public Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EcgHealthActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;

.field private view7f0a006f:Landroid/view/View;

.field private view7f0a0076:Landroid/view/View;

.field private view7f0a0241:Landroid/view/View;

.field private view7f0a0257:Landroid/view/View;

.field private view7f0a0260:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;Landroid/view/View;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;

    .line 42
    const-string v0, "field \'tvScore\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0501

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->tvScore:Landroid/widget/TextView;

    .line 43
    const-string v0, "field \'bTest\' and method \'onClick\'"

    const v1, 0x7f0a0076

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 44
    const-string v2, "field \'bTest\'"

    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->bTest:Landroid/widget/Button;

    .line 45
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a0076:Landroid/view/View;

    .line 46
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const-string v0, "field \'bGuide\' and method \'onClick\'"

    const v1, 0x7f0a006f

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 53
    const-string v2, "field \'bGuide\'"

    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->bGuide:Landroid/widget/Button;

    .line 54
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a006f:Landroid/view/View;

    .line 55
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const-string v0, "field \'llHeart\' and method \'onClick\'"

    const v1, 0x7f0a0260

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 62
    const-string v2, "field \'llHeart\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->llHeart:Landroid/widget/LinearLayout;

    .line 63
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a0260:Landroid/view/View;

    .line 64
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const-string v0, "field \'llBlood\' and method \'onClick\'"

    const v1, 0x7f0a0241

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 71
    const-string v2, "field \'llBlood\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->llBlood:Landroid/widget/LinearLayout;

    .line 72
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a0241:Landroid/view/View;

    .line 73
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding$4;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const-string v0, "field \'llEcg\' and method \'onClick\'"

    const v1, 0x7f0a0257

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 80
    const-string v2, "field \'llEcg\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->llEcg:Landroid/widget/LinearLayout;

    .line 81
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a0257:Landroid/view/View;

    .line 82
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding$5;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const-string v0, "field \'lcvScore\'"

    const-class v1, Llecho/lib/hellocharts/view/LineChartView;

    const v2, 0x7f0a022c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/LineChartView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->lcvScore:Llecho/lib/hellocharts/view/LineChartView;

    .line 89
    const-string v0, "field \'sbScore\'"

    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f0a038e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->sbScore:Landroid/widget/SeekBar;

    .line 90
    const-string v0, "field \'tvHeartAvg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04b6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->tvHeartAvg:Landroid/widget/TextView;

    .line 91
    const-string v0, "field \'tvEcg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a049b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->tvEcg:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 99
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;

    .line 101
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->tvScore:Landroid/widget/TextView;

    .line 102
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->bTest:Landroid/widget/Button;

    .line 103
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->bGuide:Landroid/widget/Button;

    .line 104
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->llHeart:Landroid/widget/LinearLayout;

    .line 105
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->llBlood:Landroid/widget/LinearLayout;

    .line 106
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->llEcg:Landroid/widget/LinearLayout;

    .line 107
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->lcvScore:Llecho/lib/hellocharts/view/LineChartView;

    .line 108
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->sbScore:Landroid/widget/SeekBar;

    .line 109
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->tvHeartAvg:Landroid/widget/TextView;

    .line 110
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity;->tvEcg:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a0076:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a0076:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a006f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a006f:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a0260:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a0260:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a0241:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a0241:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a0257:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHealthActivity_ViewBinding;->view7f0a0257:Landroid/view/View;

    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
