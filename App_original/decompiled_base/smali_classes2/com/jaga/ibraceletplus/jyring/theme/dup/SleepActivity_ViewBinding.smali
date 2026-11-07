.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SleepActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;

.field private view7f0a0213:Landroid/view/View;

.field private view7f0a04e1:Landroid/view/View;

.field private view7f0a04e2:Landroid/view/View;

.field private view7f0a04e3:Landroid/view/View;

.field private view7f0a04e4:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;Landroid/view/View;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;

    .line 39
    const-string v0, "field \'ivSync\' and method \'OnClickivSync\'"

    const v1, 0x7f0a0213

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 40
    const-string v2, "field \'ivSync\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->ivSync:Landroid/widget/ImageView;

    .line 41
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 42
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-string v0, "field \'tvNoonStart\' and method \'OnClicktvNoonStart\'"

    const v1, 0x7f0a04e4

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 49
    const-string v2, "field \'tvNoonStart\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->tvNoonStart:Landroid/widget/TextView;

    .line 50
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a04e4:Landroid/view/View;

    .line 51
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const-string v0, "field \'tvNoonEnd\' and method \'OnClicktvNoonEnd\'"

    const v1, 0x7f0a04e3

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 58
    const-string v2, "field \'tvNoonEnd\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->tvNoonEnd:Landroid/widget/TextView;

    .line 59
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a04e3:Landroid/view/View;

    .line 60
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const-string v0, "field \'tvNightStart\' and method \'OnClicktvAlarmStartTime\'"

    const v1, 0x7f0a04e2

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 67
    const-string v2, "field \'tvNightStart\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->tvNightStart:Landroid/widget/TextView;

    .line 68
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a04e2:Landroid/view/View;

    .line 69
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding$4;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const-string v0, "field \'tvNightEnd\' and method \'OnClicktvAlarmEndTime\'"

    const v1, 0x7f0a04e1

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 76
    const-string v0, "field \'tvNightEnd\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->tvNightEnd:Landroid/widget/TextView;

    .line 77
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a04e1:Landroid/view/View;

    .line 78
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding$5;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;

    .line 93
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->ivSync:Landroid/widget/ImageView;

    .line 94
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->tvNoonStart:Landroid/widget/TextView;

    .line 95
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->tvNoonEnd:Landroid/widget/TextView;

    .line 96
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->tvNightStart:Landroid/widget/TextView;

    .line 97
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->tvNightEnd:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a04e4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a04e4:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a04e3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a04e3:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a04e2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a04e2:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a04e1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity_ViewBinding;->view7f0a04e1:Landroid/view/View;

    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
