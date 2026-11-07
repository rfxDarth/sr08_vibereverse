.class public Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RunRecordActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

.field private view7f0a0071:Landroid/view/View;

.field private view7f0a0072:Landroid/view/View;

.field private view7f0a0075:Landroid/view/View;

.field private view7f0a01f0:Landroid/view/View;

.field private view7f0a01f7:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Landroid/view/View;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    .line 42
    const-string v0, "field \'tvLocation\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04c7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvLocation:Landroid/widget/TextView;

    .line 43
    const-string v0, "field \'tvLocationInit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04c8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvLocationInit:Landroid/widget/TextView;

    .line 44
    const-string v0, "field \'tvSportName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0514

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvSportName:Landroid/widget/TextView;

    .line 45
    const-string v0, "field \'tvCalor\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a046e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvCalor:Landroid/widget/TextView;

    .line 46
    const-string v0, "field \'tvDistance\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0495

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvDistance:Landroid/widget/TextView;

    .line 47
    const-string v0, "field \'tvTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0535

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvTime:Landroid/widget/TextView;

    .line 48
    const-string v0, "field \'tvPace\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04ec

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvPace:Landroid/widget/TextView;

    .line 49
    const-string v0, "field \'tvHeartrate\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04bb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvHeartrate:Landroid/widget/TextView;

    .line 50
    const-string v0, "field \'tvStep\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0519

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvStep:Landroid/widget/TextView;

    .line 51
    const-string v0, "field \'bStop\' and method \'OnClickbStop\'"

    const v1, 0x7f0a0075

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 52
    const-string v2, "field \'bStop\'"

    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bStop:Landroid/widget/Button;

    .line 53
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a0075:Landroid/view/View;

    .line 54
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const-string v0, "field \'bResume\' and method \'OnClickbResume\'"

    const v1, 0x7f0a0072

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 61
    const-string v2, "field \'bResume\'"

    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bResume:Landroid/widget/Button;

    .line 62
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a0072:Landroid/view/View;

    .line 63
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const-string v0, "field \'bPause\' and method \'OnClickbPause\'"

    const v1, 0x7f0a0071

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 70
    const-string v2, "field \'bPause\'"

    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bPause:Landroid/widget/Button;

    .line 71
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a0071:Landroid/view/View;

    .line 72
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const-string v0, "field \'suvPause\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    const v2, 0x7f0a03ff

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->suvPause:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    .line 79
    const-string v0, "field \'llCountDown\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a024d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->llCountDown:Landroid/widget/LinearLayout;

    .line 80
    const-string v0, "field \'tvCountDown\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0484

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvCountDown:Landroid/widget/TextView;

    .line 81
    const-string v0, "field \'tvUnit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0540

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvUnit:Landroid/widget/TextView;

    .line 82
    const-string v0, "field \'llCalorie\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0249

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->llCalorie:Landroid/widget/LinearLayout;

    .line 83
    const-string v0, "field \'llHeartrate\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0263

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->llHeartrate:Landroid/widget/LinearLayout;

    .line 84
    const-string v0, "field \'llStep\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a027b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->llStep:Landroid/widget/LinearLayout;

    .line 85
    const-string v0, "field \'ivGps\' and method \'onIvGpsClick\'"

    const v1, 0x7f0a01f0

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 86
    const-string v2, "field \'ivGps\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->ivGps:Landroid/widget/ImageView;

    .line 87
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a01f0:Landroid/view/View;

    .line 88
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$4;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01f7

    .line 94
    const-string v1, "method \'OnClickivLocate\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 95
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a01f7:Landroid/view/View;

    .line 96
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding$5;-><init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    .line 111
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvLocation:Landroid/widget/TextView;

    .line 112
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvLocationInit:Landroid/widget/TextView;

    .line 113
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvSportName:Landroid/widget/TextView;

    .line 114
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvCalor:Landroid/widget/TextView;

    .line 115
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvDistance:Landroid/widget/TextView;

    .line 116
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvTime:Landroid/widget/TextView;

    .line 117
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvPace:Landroid/widget/TextView;

    .line 118
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvHeartrate:Landroid/widget/TextView;

    .line 119
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvStep:Landroid/widget/TextView;

    .line 120
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bStop:Landroid/widget/Button;

    .line 121
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bResume:Landroid/widget/Button;

    .line 122
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bPause:Landroid/widget/Button;

    .line 123
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->suvPause:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    .line 124
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->llCountDown:Landroid/widget/LinearLayout;

    .line 125
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvCountDown:Landroid/widget/TextView;

    .line 126
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvUnit:Landroid/widget/TextView;

    .line 127
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->llCalorie:Landroid/widget/LinearLayout;

    .line 128
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->llHeartrate:Landroid/widget/LinearLayout;

    .line 129
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->llStep:Landroid/widget/LinearLayout;

    .line 130
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->ivGps:Landroid/widget/ImageView;

    .line 132
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a0075:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a0075:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a0072:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a0072:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a0071:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a0071:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a01f0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a01f0:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a01f7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity_ViewBinding;->view7f0a01f7:Landroid/view/View;

    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
