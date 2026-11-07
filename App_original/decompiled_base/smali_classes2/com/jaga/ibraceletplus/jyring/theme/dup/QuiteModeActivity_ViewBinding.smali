.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;
.super Ljava/lang/Object;
.source "QuiteModeActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;

.field private view7f0a0213:Landroid/view/View;

.field private view7f0a0452:Landroid/view/View;

.field private view7f0a0454:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;Landroid/view/View;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;

    .line 37
    const-string v0, "field \'tvAlarmStartTime\' and method \'OnClicktvAlarmStartTime\'"

    const v1, 0x7f0a0454

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 38
    const-string v2, "field \'tvAlarmStartTime\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->tvAlarmStartTime:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;->view7f0a0454:Landroid/view/View;

    .line 40
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const-string v0, "field \'tvAlarmEndTime\' and method \'OnClicktvAlarmEndTime\'"

    const v1, 0x7f0a0452

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    const-string v2, "field \'tvAlarmEndTime\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->tvAlarmEndTime:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;->view7f0a0452:Landroid/view/View;

    .line 49
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding$2;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const-string v0, "field \'ivSync\' and method \'OnClickivSync\'"

    const v1, 0x7f0a0213

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 56
    const-string v2, "field \'ivSync\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->ivSync:Landroid/widget/ImageView;

    .line 57
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 58
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding$3;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const-string v0, "field \'sbDnd\'"

    const-class v1, Landroid/widget/Switch;

    const v2, 0x7f0a0389

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->sbDnd:Landroid/widget/Switch;

    .line 65
    const-string v0, "field \'sbVibrate\'"

    const-class v1, Landroid/widget/Switch;

    const v2, 0x7f0a0391

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->sbVibrate:Landroid/widget/Switch;

    .line 66
    const-string v0, "field \'sbLight\'"

    const-class v1, Landroid/widget/Switch;

    const v2, 0x7f0a038d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->sbLight:Landroid/widget/Switch;

    .line 67
    const-string v0, "field \'rlVibrate\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a036e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->rlVibrate:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;

    .line 77
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->tvAlarmStartTime:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->tvAlarmEndTime:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->ivSync:Landroid/widget/ImageView;

    .line 80
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->sbDnd:Landroid/widget/Switch;

    .line 81
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->sbVibrate:Landroid/widget/Switch;

    .line 82
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->sbLight:Landroid/widget/Switch;

    .line 83
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->rlVibrate:Landroid/widget/RelativeLayout;

    .line 85
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;->view7f0a0454:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;->view7f0a0454:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;->view7f0a0452:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;->view7f0a0452:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
