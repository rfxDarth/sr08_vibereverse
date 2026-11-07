.class public Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment_ViewBinding;
.super Ljava/lang/Object;
.source "GoalFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;

    .line 22
    const-string v0, "field \'knlWeight\'"

    const-class v1, Lyanzhikai/ruler/KgNumberLayout;

    const v2, 0x7f0a0223

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyanzhikai/ruler/KgNumberLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->knlWeight:Lyanzhikai/ruler/KgNumberLayout;

    .line 23
    const-string v0, "field \'brWeight\'"

    const-class v1, Lyanzhikai/ruler/BooheeRuler;

    const v2, 0x7f0a0096

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyanzhikai/ruler/BooheeRuler;

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;

    .line 33
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->knlWeight:Lyanzhikai/ruler/KgNumberLayout;

    .line 34
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/guide/GoalFragment;->brWeight:Lyanzhikai/ruler/BooheeRuler;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
