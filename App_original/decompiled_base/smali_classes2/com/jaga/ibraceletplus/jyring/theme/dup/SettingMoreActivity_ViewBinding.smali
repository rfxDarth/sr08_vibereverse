.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SettingMoreActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;

.field private view7f0a037d:Landroid/view/View;

.field private view7f0a04a7:Landroid/view/View;

.field private view7f0a04ca:Landroid/view/View;

.field private view7f0a04ea:Landroid/view/View;

.field private view7f0a04f6:Landroid/view/View;

.field private view7f0a04fb:Landroid/view/View;

.field private view7f0a04fc:Landroid/view/View;

.field private view7f0a050b:Landroid/view/View;

.field private view7f0a0533:Landroid/view/View;

.field private view7f0a0535:Landroid/view/View;

.field private view7f0a054d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;Landroid/view/View;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;

    .line 55
    const-string v0, "field \'mrlTime\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a02ce

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->mrlTime:Landroid/widget/RelativeLayout;

    .line 56
    const-string v0, "field \'tvTime\' and method \'onTvTimeClicked\'"

    const v1, 0x7f0a0535

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    const-string v2, "field \'tvTime\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->tvTime:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a0535:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const-string v0, "field \'mrlLost\'"

    const-class v1, Lcom/balysv/materialripple/MaterialRippleLayout;

    const v2, 0x7f0a02cd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/balysv/materialripple/MaterialRippleLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->mrlLost:Lcom/balysv/materialripple/MaterialRippleLayout;

    .line 66
    const-string v0, "field \'sLost\' and method \'onSLostCheckedChanged\'"

    const v1, 0x7f0a037d

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 67
    const-string v2, "field \'sLost\'"

    const-class v3, Landroid/widget/Switch;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->sLost:Landroid/widget/Switch;

    .line 68
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a037d:Landroid/view/View;

    .line 69
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const-string v0, "field \'rlWechat\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0371

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->rlWechat:Landroid/widget/RelativeLayout;

    .line 76
    const-string v0, "field \'tvOtaTitle\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04eb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->tvOtaTitle:Landroid/widget/TextView;

    .line 77
    const-string v0, "field \'ivOtaRedPoint\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01fe

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->ivOtaRedPoint:Landroid/widget/ImageView;

    .line 78
    const-string v0, "field \'sbHand\'"

    const-class v1, Landroid/widget/Switch;

    const v2, 0x7f0a038b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->sbHand:Landroid/widget/Switch;

    .line 79
    const-string v0, "field \'llFindDevice\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a025d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->llFindDevice:Landroid/widget/LinearLayout;

    .line 80
    const-string v0, "field \'llSavingPower\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0270

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->llSavingPower:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04f6

    .line 81
    const-string v1, "method \'OnClicktvQuite\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04f6:Landroid/view/View;

    .line 83
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04ea

    .line 89
    const-string v1, "method \'OnClicktvOta\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04ea:Landroid/view/View;

    .line 91
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04a7

    .line 97
    const-string v1, "method \'OnClicktvFind\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04a7:Landroid/view/View;

    .line 99
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$5;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04ca

    .line 105
    const-string v1, "method \'OnClicktvLow\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04ca:Landroid/view/View;

    .line 107
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$6;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04fc

    .line 113
    const-string v1, "method \'OnClicktvRestart\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04fc:Landroid/view/View;

    .line 115
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$7;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04fb

    .line 121
    const-string v1, "method \'OnClicktvReset\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 122
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04fb:Landroid/view/View;

    .line 123
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$8;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a050b

    .line 129
    const-string v1, "method \'OnClicktvSleep\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a050b:Landroid/view/View;

    .line 131
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$9;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0533

    .line 137
    const-string v1, "method \'OnClicktvTest\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a0533:Landroid/view/View;

    .line 139
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$10;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a054d

    .line 145
    const-string v1, "method \'OnClicktvWechat\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 146
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a054d:Landroid/view/View;

    .line 147
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$11;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding$11;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 160
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;

    .line 162
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->mrlTime:Landroid/widget/RelativeLayout;

    .line 163
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->tvTime:Landroid/widget/TextView;

    .line 164
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->mrlLost:Lcom/balysv/materialripple/MaterialRippleLayout;

    .line 165
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->sLost:Landroid/widget/Switch;

    .line 166
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->rlWechat:Landroid/widget/RelativeLayout;

    .line 167
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->tvOtaTitle:Landroid/widget/TextView;

    .line 168
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->ivOtaRedPoint:Landroid/widget/ImageView;

    .line 169
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->sbHand:Landroid/widget/Switch;

    .line 170
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->llFindDevice:Landroid/widget/LinearLayout;

    .line 171
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity;->llSavingPower:Landroid/widget/LinearLayout;

    .line 173
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a0535:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a0535:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a037d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a037d:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04f6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04f6:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04ea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04ea:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04a7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04a7:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04ca:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04ca:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04fc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04fc:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04fb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a04fb:Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a050b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a050b:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a0533:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a0533:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a054d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SettingMoreActivity_ViewBinding;->view7f0a054d:Landroid/view/View;

    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
