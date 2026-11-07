.class public Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;
.super Ljava/lang/Object;
.source "FragmentPerson_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

.field private view7f0a027c:Landroid/view/View;

.field private view7f0a0285:Landroid/view/View;

.field private view7f0a0366:Landroid/view/View;

.field private view7f0a037c:Landroid/view/View;

.field private view7f0a044e:Landroid/view/View;

.field private view7f0a0450:Landroid/view/View;

.field private view7f0a04a4:Landroid/view/View;

.field private view7f0a04ac:Landroid/view/View;

.field private view7f0a04cc:Landroid/view/View;

.field private view7f0a04f4:Landroid/view/View;

.field private view7f0a052b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;Landroid/view/View;)V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    .line 51
    const-string v0, "field \'tvTargetStep\' and method \'OnClickllTargetStep\'"

    const v1, 0x7f0a052b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 52
    const-string v2, "field \'tvTargetStep\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvTargetStep:Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a052b:Landroid/view/View;

    .line 54
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const-string v0, "field \'tvTargetSport\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a052a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvTargetSport:Landroid/widget/TextView;

    .line 61
    const-string v0, "field \'llAgreementPrivacy\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a023a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->llAgreementPrivacy:Landroid/widget/LinearLayout;

    .line 62
    const-string v0, "field \'cvFemaleReminder\'"

    const-class v1, Landroidx/cardview/widget/CardView;

    const v2, 0x7f0a0113

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->cvFemaleReminder:Landroidx/cardview/widget/CardView;

    .line 63
    const-string v0, "field \'cvWearMode\'"

    const-class v1, Landroidx/cardview/widget/CardView;

    const v2, 0x7f0a0120

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->cvWearMode:Landroidx/cardview/widget/CardView;

    .line 64
    const-string v0, "field \'ivAltLogo\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01d3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->ivAltLogo:Landroid/widget/ImageView;

    .line 65
    const-string v0, "field \'civAvatar\'"

    const-class v1, Lde/hdodenhof/circleimageview/CircleImageView;

    const v2, 0x7f0a00e1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->civAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 66
    const-string v0, "field \'tvNickName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04e0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvNickName:Landroid/widget/TextView;

    .line 67
    const-string v0, "field \'tvUserName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0543

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvUserName:Landroid/widget/TextView;

    .line 68
    const-string v0, "field \'tvUnit\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0540

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvUnit:Landroid/widget/TextView;

    .line 69
    const-string v0, "field \'tvWearMode\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a054c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvWearMode:Landroid/widget/TextView;

    .line 70
    const-string v0, "field \'sFit\' and method \'OnCheckedChangedsFit\'"

    const v1, 0x7f0a037c

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 71
    const-string v2, "field \'sFit\'"

    const-class v3, Landroid/widget/Switch;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->sFit:Landroid/widget/Switch;

    .line 72
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a037c:Landroid/view/View;

    .line 73
    check-cast v0, Landroid/widget/CompoundButton;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a0285

    .line 79
    const-string v1, "method \'OnClickllUser\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a0285:Landroid/view/View;

    .line 81
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a027c

    .line 87
    const-string v1, "method \'OnClickllTargetSport\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a027c:Landroid/view/View;

    .line 89
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$4;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04cc

    .line 95
    const-string v1, "method \'OnClicktvManual\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a04cc:Landroid/view/View;

    .line 97
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$5;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04a4

    .line 103
    const-string v1, "method \'OnClicktvFeedback\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a04a4:Landroid/view/View;

    .line 105
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$6;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0366

    .line 111
    const-string v1, "method \'rlFemaleReminderOnClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a0366:Landroid/view/View;

    .line 113
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$7;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04ac

    .line 119
    const-string v1, "method \'OnClicktvGoogleFit\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a04ac:Landroid/view/View;

    .line 121
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$8;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a044e

    .line 127
    const-string v1, "method \'OnClicktvAbout\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a044e:Landroid/view/View;

    .line 129
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$9;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0450

    .line 135
    const-string v1, "method \'tvAgreementOnClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 136
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a0450:Landroid/view/View;

    .line 137
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$10;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04f4

    .line 143
    const-string v1, "method \'tvPrivacyOnClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 144
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a04f4:Landroid/view/View;

    .line 145
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$11;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$11;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 158
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    .line 160
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvTargetStep:Landroid/widget/TextView;

    .line 161
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvTargetSport:Landroid/widget/TextView;

    .line 162
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->llAgreementPrivacy:Landroid/widget/LinearLayout;

    .line 163
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->cvFemaleReminder:Landroidx/cardview/widget/CardView;

    .line 164
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->cvWearMode:Landroidx/cardview/widget/CardView;

    .line 165
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->ivAltLogo:Landroid/widget/ImageView;

    .line 166
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->civAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 167
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvNickName:Landroid/widget/TextView;

    .line 168
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvUserName:Landroid/widget/TextView;

    .line 169
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvUnit:Landroid/widget/TextView;

    .line 170
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->tvWearMode:Landroid/widget/TextView;

    .line 171
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->sFit:Landroid/widget/Switch;

    .line 173
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a052b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a052b:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a037c:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a037c:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a0285:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a0285:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a027c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a027c:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a04cc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a04cc:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a04a4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a04a4:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a0366:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a0366:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a04ac:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a04ac:Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a044e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a044e:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a0450:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a0450:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a04f4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;->view7f0a04f4:Landroid/view/View;

    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
