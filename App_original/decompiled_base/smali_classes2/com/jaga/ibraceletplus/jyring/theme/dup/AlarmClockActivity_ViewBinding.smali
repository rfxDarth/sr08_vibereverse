.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AlarmClockActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;)V
    .locals 1

    .line 19
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;

    .line 26
    const-string v0, "field \'lvAlarmDaily\'"

    const-class v1, Landroid/widget/ListView;

    const v2, 0x7f0a028e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->lvAlarmDaily:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;

    .line 36
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->lvAlarmDaily:Landroid/widget/ListView;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
