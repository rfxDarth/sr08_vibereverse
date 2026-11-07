.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AlarmPillActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;

.field private view7f0a0213:Landroid/view/View;

.field private view7f0a038a:Landroid/view/View;

.field private view7f0a0452:Landroid/view/View;

.field private view7f0a0454:Landroid/view/View;

.field private view7f0a04ee:Landroid/view/View;

.field private view7f0a0512:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;Landroid/view/View;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;

    .line 44
    const-string v0, "field \'etName\'"

    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a0170

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->etName:Landroid/widget/EditText;

    .line 45
    const-string v0, "field \'sbEnable\' and method \'OnCheckedChangedsbEnable\'"

    const v1, 0x7f0a038a

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    const-string v2, "field \'sbEnable\'"

    const-class v3, Landroid/widget/Switch;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->sbEnable:Landroid/widget/Switch;

    .line 47
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a038a:Landroid/view/View;

    .line 48
    check-cast v0, Landroid/widget/CompoundButton;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    const-string v0, "field \'tvSnooze\' and method \'OnClicktvSnooze\'"

    const v1, 0x7f0a0512

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    const-string v2, "field \'tvSnooze\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->tvSnooze:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a0512:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const-string v0, "field \'tvAlarmStartTime\' and method \'OnClicktvAlarmStartTime\'"

    const v1, 0x7f0a0454

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 64
    const-string v2, "field \'tvAlarmStartTime\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->tvAlarmStartTime:Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a0454:Landroid/view/View;

    .line 66
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const-string v0, "field \'tvAlarmEndTime\' and method \'OnClicktvAlarmEndTime\'"

    const v1, 0x7f0a0452

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    const-string v2, "field \'tvAlarmEndTime\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->tvAlarmEndTime:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a0452:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const-string v0, "field \'tvPeriod\' and method \'OnClicktvPeriod\'"

    const v1, 0x7f0a04ee

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 82
    const-string v2, "field \'tvPeriod\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->tvPeriod:Landroid/widget/TextView;

    .line 83
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a04ee:Landroid/view/View;

    .line 84
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding$5;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const-string v0, "field \'ivSync\' and method \'OnClickivSync\'"

    const v1, 0x7f0a0213

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 91
    const-string v0, "field \'ivSync\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->ivSync:Landroid/widget/ImageView;

    .line 92
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 93
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding$6;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;

    .line 108
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->etName:Landroid/widget/EditText;

    .line 109
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->sbEnable:Landroid/widget/Switch;

    .line 110
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->tvSnooze:Landroid/widget/TextView;

    .line 111
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->tvAlarmStartTime:Landroid/widget/TextView;

    .line 112
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->tvAlarmEndTime:Landroid/widget/TextView;

    .line 113
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->tvPeriod:Landroid/widget/TextView;

    .line 114
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->ivSync:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a038a:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a038a:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a0512:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a0512:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a0454:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a0454:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a0452:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a0452:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a04ee:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a04ee:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
