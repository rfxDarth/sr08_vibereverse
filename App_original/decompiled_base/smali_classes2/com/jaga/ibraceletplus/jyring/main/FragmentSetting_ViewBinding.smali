.class public Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;
.super Ljava/lang/Object;
.source "FragmentSetting_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

.field private view7f0a01d5:Landroid/view/View;

.field private view7f0a01ed:Landroid/view/View;

.field private view7f0a0240:Landroid/view/View;

.field private view7f0a0256:Landroid/view/View;

.field private view7f0a037b:Landroid/view/View;

.field private view7f0a037d:Landroid/view/View;

.field private view7f0a037e:Landroid/view/View;

.field private view7f0a037f:Landroid/view/View;

.field private view7f0a0451:Landroid/view/View;

.field private view7f0a0471:Landroid/view/View;

.field private view7f0a047d:Landroid/view/View;

.field private view7f0a0488:Landroid/view/View;

.field private view7f0a0494:Landroid/view/View;

.field private view7f0a0499:Landroid/view/View;

.field private view7f0a049a:Landroid/view/View;

.field private view7f0a04a8:Landroid/view/View;

.field private view7f0a04c1:Landroid/view/View;

.field private view7f0a04c4:Landroid/view/View;

.field private view7f0a04ca:Landroid/view/View;

.field private view7f0a04cf:Landroid/view/View;

.field private view7f0a04d8:Landroid/view/View;

.field private view7f0a04e7:Landroid/view/View;

.field private view7f0a04ea:Landroid/view/View;

.field private view7f0a04f6:Landroid/view/View;

.field private view7f0a04fb:Landroid/view/View;

.field private view7f0a04fc:Landroid/view/View;

.field private view7f0a0504:Landroid/view/View;

.field private view7f0a0507:Landroid/view/View;

.field private view7f0a050b:Landroid/view/View;

.field private view7f0a0511:Landroid/view/View;

.field private view7f0a0533:Landroid/view/View;

.field private view7f0a0535:Landroid/view/View;

.field private view7f0a0537:Landroid/view/View;

.field private view7f0a054d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;Landroid/view/View;)V
    .locals 4

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    .line 101
    const-string v0, "field \'pvBattery\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    const v2, 0x7f0a034c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->pvBattery:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    .line 102
    const-string v0, "field \'bvBattery\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    const v2, 0x7f0a00ae

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    .line 103
    const-string v0, "field \'tvBattery\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a045d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvBattery:Landroid/widget/TextView;

    .line 104
    const-string v0, "field \'tvDeviceSync\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0492

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceSync:Landroid/widget/TextView;

    .line 105
    const-string v0, "field \'tvHint\' and method \'OnClickivSearch\'"

    const v1, 0x7f0a04c1

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 106
    const-string v2, "field \'tvHint\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvHint:Landroid/widget/TextView;

    .line 107
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04c1:Landroid/view/View;

    .line 108
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const-string v0, "field \'ivBattery\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01d6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivBattery:Landroid/widget/ImageView;

    .line 115
    const-string v0, "field \'ivDevice\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01ea

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    .line 116
    const-string v0, "field \'tvNotify\' and method \'OnClicktvNotify\'"

    const v1, 0x7f0a04e7

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 117
    const-string v2, "field \'tvNotify\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvNotify:Landroid/widget/TextView;

    .line 118
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04e7:Landroid/view/View;

    .line 119
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const-string v0, "field \'tvAlarm\' and method \'OnClicktvAlarmn\'"

    const v1, 0x7f0a0451

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 126
    const-string v2, "field \'tvAlarm\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvAlarm:Landroid/widget/TextView;

    .line 127
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0451:Landroid/view/View;

    .line 128
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const-string v0, "field \'tvSedentary\' and method \'OnClicktvSedentary\'"

    const v1, 0x7f0a0504

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 135
    const-string v2, "field \'tvSedentary\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvSedentary:Landroid/widget/TextView;

    .line 136
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0504:Landroid/view/View;

    .line 137
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$4;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const-string v0, "field \'tvMedicine\' and method \'OnClicktvMedicine\'"

    const v1, 0x7f0a04cf

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 144
    const-string v2, "field \'tvMedicine\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvMedicine:Landroid/widget/TextView;

    .line 145
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04cf:Landroid/view/View;

    .line 146
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$5;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const-string v0, "field \'tvCamera\' and method \'OnClicktvCamera\'"

    const v1, 0x7f0a0471

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 153
    const-string v2, "field \'tvCamera\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvCamera:Landroid/widget/TextView;

    .line 154
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0471:Landroid/view/View;

    .line 155
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$6;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const-string v0, "field \'tvMore\' and method \'OnClicktvMore\'"

    const v1, 0x7f0a04d8

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 162
    const-string v2, "field \'tvMore\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvMore:Landroid/widget/TextView;

    .line 163
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04d8:Landroid/view/View;

    .line 164
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$7;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const-string v0, "field \'tvMoreTitle\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04d9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvMoreTitle:Landroid/widget/TextView;

    .line 171
    const-string v0, "field \'ivMoreRedPoint\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01fb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivMoreRedPoint:Landroid/widget/ImageView;

    .line 172
    const-string v0, "field \'tvOtaTitle\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04eb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvOtaTitle:Landroid/widget/TextView;

    .line 173
    const-string v0, "field \'ivOtaRedPoint\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01fe

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivOtaRedPoint:Landroid/widget/ImageView;

    .line 174
    const-string v0, "field \'ivSearch\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a020c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivSearch:Landroid/widget/ImageView;

    .line 175
    const-string v0, "field \'tvCustome\' and method \'OnClicktvCustom\'"

    const v1, 0x7f0a0488

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 176
    const-string v2, "field \'tvCustome\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvCustome:Landroid/widget/TextView;

    .line 177
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0488:Landroid/view/View;

    .line 178
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$8;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a028c

    .line 184
    const-string v1, "field \'loadingOverlay\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->loadingOverlay:Landroid/view/View;

    .line 185
    const-string v0, "field \'tvMessage\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04d1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvMessage:Landroid/widget/TextView;

    .line 186
    const-string v0, "field \'tvTestTitle\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0534

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvTestTitle:Landroid/widget/TextView;

    .line 187
    const-string v0, "field \'sCall\' and method \'OnCheckedChangedsCall\'"

    const v1, 0x7f0a037b

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 188
    const-string v2, "field \'sCall\'"

    const-class v3, Landroid/widget/Switch;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sCall:Landroid/widget/Switch;

    .line 189
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a037b:Landroid/view/View;

    .line 190
    check-cast v0, Landroid/widget/CompoundButton;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$9;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 196
    const-string v0, "field \'sMusic\' and method \'OnCheckedChangedsMusic\'"

    const v1, 0x7f0a037f

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 197
    const-string v2, "field \'sMusic\'"

    const-class v3, Landroid/widget/Switch;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sMusic:Landroid/widget/Switch;

    .line 198
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a037f:Landroid/view/View;

    .line 199
    check-cast v0, Landroid/widget/CompoundButton;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$10;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 205
    const-string v0, "field \'sMessage\' and method \'OnCheckedChangedsMessage\'"

    const v1, 0x7f0a037e

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 206
    const-string v2, "field \'sMessage\'"

    const-class v3, Landroid/widget/Switch;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sMessage:Landroid/widget/Switch;

    .line 207
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a037e:Landroid/view/View;

    .line 208
    check-cast v0, Landroid/widget/CompoundButton;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$11;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$11;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 214
    const-string v0, "field \'ivDisconnect\' and method \'OnClickivDisconnect\'"

    const v1, 0x7f0a01ed

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 215
    const-string v2, "field \'ivDisconnect\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDisconnect:Landroid/widget/TextView;

    .line 216
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a01ed:Landroid/view/View;

    .line 217
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$12;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$12;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const-string v0, "field \'llDevice\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0252

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llDevice:Landroid/widget/LinearLayout;

    .line 224
    const-string v0, "field \'lvDevice\'"

    const-class v1, Landroid/widget/ListView;

    const v2, 0x7f0a0290

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->lvDevice:Landroid/widget/ListView;

    .line 225
    const-string v0, "field \'llContact\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a024c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llContact:Landroid/widget/LinearLayout;

    .line 226
    const-string v0, "field \'llReminder\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a026e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llReminder:Landroid/widget/LinearLayout;

    .line 227
    const-string v0, "field \'llDial\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0255

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llDial:Landroid/widget/LinearLayout;

    .line 228
    const-string v0, "field \'rlWallpaper\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a036f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlWallpaper:Landroid/widget/RelativeLayout;

    .line 229
    const-string v0, "field \'dial_img_1\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0137

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dial_img_1:Landroid/widget/ImageView;

    .line 230
    const-string v0, "field \'dial_img_2\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0138

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dial_img_2:Landroid/widget/ImageView;

    .line 231
    const-string v0, "field \'dial_img_3\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0139

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dial_img_3:Landroid/widget/ImageView;

    .line 232
    const-string v0, "field \'rlCustomAlarm\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0362

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlCustomAlarm:Landroid/widget/RelativeLayout;

    .line 233
    const-string v0, "field \'rlECard\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0365

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlECard:Landroid/widget/RelativeLayout;

    .line 234
    const-string v0, "field \'rlSmsRsp\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a036c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlSmsRsp:Landroid/widget/RelativeLayout;

    .line 235
    const-string v0, "field \'cvCall\'"

    const-class v1, Landroidx/cardview/widget/CardView;

    const v2, 0x7f0a0110

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvCall:Landroidx/cardview/widget/CardView;

    .line 236
    const-string v0, "field \'cvSms\'"

    const-class v1, Landroidx/cardview/widget/CardView;

    const v2, 0x7f0a011d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvSms:Landroidx/cardview/widget/CardView;

    .line 237
    const-string v0, "field \'cvNotify\'"

    const-class v1, Landroidx/cardview/widget/CardView;

    const v2, 0x7f0a0117

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvNotify:Landroidx/cardview/widget/CardView;

    .line 238
    const-string v0, "field \'llAlarm\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a023b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llAlarm:Landroid/widget/LinearLayout;

    .line 239
    const-string v0, "field \'llSedentary\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0273

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSedentary:Landroid/widget/LinearLayout;

    .line 240
    const-string v0, "field \'llSettingMore\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0274

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSettingMore:Landroid/widget/LinearLayout;

    .line 241
    const-string v0, "field \'llSettingMoreContent\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0275

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSettingMoreContent:Landroid/widget/LinearLayout;

    .line 242
    const-string v0, "field \'tvTitle\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a053c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvTitle:Landroid/widget/TextView;

    .line 243
    const-string v0, "field \'tvHint2\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04c2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvHint2:Landroid/widget/TextView;

    .line 244
    const-string v0, "field \'cvTimeFormat\'"

    const-class v1, Landroidx/cardview/widget/CardView;

    const v2, 0x7f0a011f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvTimeFormat:Landroidx/cardview/widget/CardView;

    .line 245
    const-string v0, "field \'tvTimeFormat\' and method \'OnClicktvTimeFormat\'"

    const v1, 0x7f0a0537

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 246
    const-string v2, "field \'tvTimeFormat\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvTimeFormat:Landroid/widget/TextView;

    .line 247
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0537:Landroid/view/View;

    .line 248
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$13;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$13;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    const-string v0, "field \'tvLightDegree\' and method \'OnClicktvLightDegree\'"

    const v1, 0x7f0a04c4

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 255
    const-string v2, "field \'tvLightDegree\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvLightDegree:Landroid/widget/TextView;

    .line 256
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04c4:Landroid/view/View;

    .line 257
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$14;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$14;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const-string v0, "field \'tvDeviceName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0490

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceName:Landroid/widget/TextView;

    .line 264
    const-string v0, "field \'tvDeviceVersion\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0493

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceVersion:Landroid/widget/TextView;

    .line 265
    const-string v0, "field \'tvDeviceMac\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a048f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceMac:Landroid/widget/TextView;

    .line 266
    const-string v0, "field \'tvDeviceSn\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0491

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceSn:Landroid/widget/TextView;

    .line 267
    const-string v0, "field \'llDeviceSearch\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0254

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llDeviceSearch:Landroid/widget/LinearLayout;

    .line 268
    const-string v0, "field \'mrlTime\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a02ce

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->mrlTime:Landroid/widget/RelativeLayout;

    .line 269
    const-string v0, "field \'tvTime\' and method \'onTvTimeClicked\'"

    const v1, 0x7f0a0535

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 270
    const-string v2, "field \'tvTime\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvTime:Landroid/widget/TextView;

    .line 271
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0535:Landroid/view/View;

    .line 272
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$15;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$15;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const-string v0, "field \'mrlLost\'"

    const-class v1, Lcom/balysv/materialripple/MaterialRippleLayout;

    const v2, 0x7f0a02cd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/balysv/materialripple/MaterialRippleLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->mrlLost:Lcom/balysv/materialripple/MaterialRippleLayout;

    .line 279
    const-string v0, "field \'sLost\' and method \'onSLostCheckedChanged\'"

    const v1, 0x7f0a037d

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 280
    const-string v2, "field \'sLost\'"

    const-class v3, Landroid/widget/Switch;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sLost:Landroid/widget/Switch;

    .line 281
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a037d:Landroid/view/View;

    .line 282
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$16;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$16;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const-string v0, "field \'rlWechat\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0371

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlWechat:Landroid/widget/RelativeLayout;

    .line 289
    const-string v0, "field \'sbHand\'"

    const-class v1, Landroid/widget/Switch;

    const v2, 0x7f0a038b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sbHand:Landroid/widget/Switch;

    .line 290
    const-string v0, "field \'llFindDevice\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a025d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llFindDevice:Landroid/widget/LinearLayout;

    .line 291
    const-string v0, "field \'cvFindDevice\'"

    const-class v1, Landroidx/cardview/widget/CardView;

    const v2, 0x7f0a0114

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvFindDevice:Landroidx/cardview/widget/CardView;

    .line 292
    const-string v0, "field \'llSavingPower\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0270

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSavingPower:Landroid/widget/LinearLayout;

    .line 293
    const-string v0, "field \'cvShortVideoTitle\'"

    const-class v1, Landroidx/cardview/widget/CardView;

    const v2, 0x7f0a011c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvShortVideoTitle:Landroidx/cardview/widget/CardView;

    .line 294
    const-string v0, "field \'cvAutoHeartTest\'"

    const-class v1, Landroidx/cardview/widget/CardView;

    const v2, 0x7f0a010c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvAutoHeartTest:Landroidx/cardview/widget/CardView;

    .line 295
    const-string v0, "field \'rlLightDegree\'"

    const-class v1, Landroidx/cardview/widget/CardView;

    const v2, 0x7f0a0116

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlLightDegree:Landroidx/cardview/widget/CardView;

    .line 296
    const-string v0, "field \'llHint\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0264

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llHint:Landroid/widget/LinearLayout;

    .line 297
    const-string v0, "field \'llSearch\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0272

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSearch:Landroid/widget/LinearLayout;

    .line 298
    const-string v0, "field \'ivBack\' and method \'OnClickivBack\'"

    const v1, 0x7f0a01d5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 299
    const-string v2, "field \'ivBack\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivBack:Landroid/widget/ImageView;

    .line 300
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a01d5:Landroid/view/View;

    .line 301
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$17;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$17;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const-string v0, "field \'llEmptyDevice\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0259

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llEmptyDevice:Landroid/widget/LinearLayout;

    .line 308
    const-string v0, "field \'cvBleAdd\'"

    const-class v1, Landroidx/cardview/widget/CardView;

    const v2, 0x7f0a010d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvBleAdd:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0a0256

    .line 309
    const-string v1, "method \'OnClicktvDialMarket\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 310
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0256:Landroid/view/View;

    .line 311
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$18;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$18;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0494

    .line 317
    const-string v1, "method \'OnClicktvDialCustom\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 318
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0494:Landroid/view/View;

    .line 319
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$19;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$19;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a047d

    .line 325
    const-string v1, "method \'OnClicktvContact\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 326
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a047d:Landroid/view/View;

    .line 327
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$20;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$20;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0499

    .line 333
    const-string v1, "method \'OnClicktvDrink\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 334
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0499:Landroid/view/View;

    .line 335
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$21;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$21;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a049a

    .line 341
    const-string v1, "method \'OnClicktvECard\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 342
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a049a:Landroid/view/View;

    .line 343
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$22;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$22;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0511

    .line 349
    const-string v1, "method \'OnClicktvSmsRsp\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 350
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0511:Landroid/view/View;

    .line 351
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$23;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$23;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04f6

    .line 357
    const-string v1, "method \'OnClicktvQuite\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 358
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04f6:Landroid/view/View;

    .line 359
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$24;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$24;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04ea

    .line 365
    const-string v1, "method \'OnClicktvOta\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 366
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04ea:Landroid/view/View;

    .line 367
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$25;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$25;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04a8

    .line 373
    const-string v1, "method \'OnClicktvFind\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 374
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04a8:Landroid/view/View;

    .line 375
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$26;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$26;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04ca

    .line 381
    const-string v1, "method \'OnClicktvLow\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 382
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04ca:Landroid/view/View;

    .line 383
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$27;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$27;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04fc

    .line 389
    const-string v1, "method \'OnClicktvRestart\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 390
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04fc:Landroid/view/View;

    .line 391
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$28;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$28;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04fb

    .line 397
    const-string v1, "method \'OnClicktvReset\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 398
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04fb:Landroid/view/View;

    .line 399
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$29;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$29;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a050b

    .line 405
    const-string v1, "method \'OnClicktvSleep\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 406
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a050b:Landroid/view/View;

    .line 407
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$30;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$30;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0533

    .line 413
    const-string v1, "method \'OnClicktvTest\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 414
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0533:Landroid/view/View;

    .line 415
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$31;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$31;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0507

    .line 421
    const-string v1, "method \'OnClicktvShortVideo\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 422
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0507:Landroid/view/View;

    .line 423
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$32;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$32;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a054d

    .line 429
    const-string v1, "method \'OnClicktvWechat\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 430
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a054d:Landroid/view/View;

    .line 431
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$33;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$33;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0240

    .line 437
    const-string v1, "method \'OnClickllBleAdd\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 438
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0240:Landroid/view/View;

    .line 439
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$34;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding$34;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 452
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    .line 454
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->pvBattery:Lcom/jaga/ibraceletplus/jyring/widget/ProgressView;

    .line 455
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->bvBattery:Lcom/jaga/ibraceletplus/jyring/widget/BatteryView;

    .line 456
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvBattery:Landroid/widget/TextView;

    .line 457
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceSync:Landroid/widget/TextView;

    .line 458
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvHint:Landroid/widget/TextView;

    .line 459
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivBattery:Landroid/widget/ImageView;

    .line 460
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDevice:Landroid/widget/ImageView;

    .line 461
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvNotify:Landroid/widget/TextView;

    .line 462
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvAlarm:Landroid/widget/TextView;

    .line 463
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvSedentary:Landroid/widget/TextView;

    .line 464
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvMedicine:Landroid/widget/TextView;

    .line 465
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvCamera:Landroid/widget/TextView;

    .line 466
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvMore:Landroid/widget/TextView;

    .line 467
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvMoreTitle:Landroid/widget/TextView;

    .line 468
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivMoreRedPoint:Landroid/widget/ImageView;

    .line 469
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvOtaTitle:Landroid/widget/TextView;

    .line 470
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivOtaRedPoint:Landroid/widget/ImageView;

    .line 471
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivSearch:Landroid/widget/ImageView;

    .line 472
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvCustome:Landroid/widget/TextView;

    .line 473
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->loadingOverlay:Landroid/view/View;

    .line 474
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvMessage:Landroid/widget/TextView;

    .line 475
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvTestTitle:Landroid/widget/TextView;

    .line 476
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sCall:Landroid/widget/Switch;

    .line 477
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sMusic:Landroid/widget/Switch;

    .line 478
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sMessage:Landroid/widget/Switch;

    .line 479
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivDisconnect:Landroid/widget/TextView;

    .line 480
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llDevice:Landroid/widget/LinearLayout;

    .line 481
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->lvDevice:Landroid/widget/ListView;

    .line 482
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llContact:Landroid/widget/LinearLayout;

    .line 483
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llReminder:Landroid/widget/LinearLayout;

    .line 484
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llDial:Landroid/widget/LinearLayout;

    .line 485
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlWallpaper:Landroid/widget/RelativeLayout;

    .line 486
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dial_img_1:Landroid/widget/ImageView;

    .line 487
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dial_img_2:Landroid/widget/ImageView;

    .line 488
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->dial_img_3:Landroid/widget/ImageView;

    .line 489
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlCustomAlarm:Landroid/widget/RelativeLayout;

    .line 490
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlECard:Landroid/widget/RelativeLayout;

    .line 491
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlSmsRsp:Landroid/widget/RelativeLayout;

    .line 492
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvCall:Landroidx/cardview/widget/CardView;

    .line 493
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvSms:Landroidx/cardview/widget/CardView;

    .line 494
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvNotify:Landroidx/cardview/widget/CardView;

    .line 495
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llAlarm:Landroid/widget/LinearLayout;

    .line 496
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSedentary:Landroid/widget/LinearLayout;

    .line 497
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSettingMore:Landroid/widget/LinearLayout;

    .line 498
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSettingMoreContent:Landroid/widget/LinearLayout;

    .line 499
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvTitle:Landroid/widget/TextView;

    .line 500
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvHint2:Landroid/widget/TextView;

    .line 501
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvTimeFormat:Landroidx/cardview/widget/CardView;

    .line 502
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvTimeFormat:Landroid/widget/TextView;

    .line 503
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvLightDegree:Landroid/widget/TextView;

    .line 504
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceName:Landroid/widget/TextView;

    .line 505
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceVersion:Landroid/widget/TextView;

    .line 506
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceMac:Landroid/widget/TextView;

    .line 507
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvDeviceSn:Landroid/widget/TextView;

    .line 508
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llDeviceSearch:Landroid/widget/LinearLayout;

    .line 509
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->mrlTime:Landroid/widget/RelativeLayout;

    .line 510
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->tvTime:Landroid/widget/TextView;

    .line 511
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->mrlLost:Lcom/balysv/materialripple/MaterialRippleLayout;

    .line 512
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sLost:Landroid/widget/Switch;

    .line 513
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlWechat:Landroid/widget/RelativeLayout;

    .line 514
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->sbHand:Landroid/widget/Switch;

    .line 515
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llFindDevice:Landroid/widget/LinearLayout;

    .line 516
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvFindDevice:Landroidx/cardview/widget/CardView;

    .line 517
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSavingPower:Landroid/widget/LinearLayout;

    .line 518
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvShortVideoTitle:Landroidx/cardview/widget/CardView;

    .line 519
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvAutoHeartTest:Landroidx/cardview/widget/CardView;

    .line 520
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->rlLightDegree:Landroidx/cardview/widget/CardView;

    .line 521
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llHint:Landroid/widget/LinearLayout;

    .line 522
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llSearch:Landroid/widget/LinearLayout;

    .line 523
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->ivBack:Landroid/widget/ImageView;

    .line 524
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->llEmptyDevice:Landroid/widget/LinearLayout;

    .line 525
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->cvBleAdd:Landroidx/cardview/widget/CardView;

    .line 527
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04c1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04c1:Landroid/view/View;

    .line 529
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04e7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04e7:Landroid/view/View;

    .line 531
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0451:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0451:Landroid/view/View;

    .line 533
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0504:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0504:Landroid/view/View;

    .line 535
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04cf:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04cf:Landroid/view/View;

    .line 537
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0471:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0471:Landroid/view/View;

    .line 539
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04d8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04d8:Landroid/view/View;

    .line 541
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0488:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0488:Landroid/view/View;

    .line 543
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a037b:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 544
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a037b:Landroid/view/View;

    .line 545
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a037f:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 546
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a037f:Landroid/view/View;

    .line 547
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a037e:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 548
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a037e:Landroid/view/View;

    .line 549
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a01ed:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a01ed:Landroid/view/View;

    .line 551
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0537:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0537:Landroid/view/View;

    .line 553
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04c4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04c4:Landroid/view/View;

    .line 555
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0535:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0535:Landroid/view/View;

    .line 557
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a037d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a037d:Landroid/view/View;

    .line 559
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a01d5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a01d5:Landroid/view/View;

    .line 561
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0256:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0256:Landroid/view/View;

    .line 563
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0494:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0494:Landroid/view/View;

    .line 565
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a047d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a047d:Landroid/view/View;

    .line 567
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0499:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0499:Landroid/view/View;

    .line 569
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a049a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a049a:Landroid/view/View;

    .line 571
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0511:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0511:Landroid/view/View;

    .line 573
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04f6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04f6:Landroid/view/View;

    .line 575
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04ea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04ea:Landroid/view/View;

    .line 577
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04a8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04a8:Landroid/view/View;

    .line 579
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04ca:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04ca:Landroid/view/View;

    .line 581
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04fc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04fc:Landroid/view/View;

    .line 583
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04fb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a04fb:Landroid/view/View;

    .line 585
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a050b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a050b:Landroid/view/View;

    .line 587
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0533:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0533:Landroid/view/View;

    .line 589
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0507:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0507:Landroid/view/View;

    .line 591
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a054d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a054d:Landroid/view/View;

    .line 593
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0240:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting_ViewBinding;->view7f0a0240:Landroid/view/View;

    return-void

    .line 451
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
