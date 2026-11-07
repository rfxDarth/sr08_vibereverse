.class public Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EcgSessionHistoryActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

.field private view7f0a0213:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;Landroid/view/View;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    .line 32
    const-string v0, "field \'srlSync\'"

    const-class v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v2, 0x7f0a03db

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->srlSync:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 33
    const-string v0, "field \'chProgress\'"

    const-class v1, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    const v2, 0x7f0a00d1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->chProgress:Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    const v0, 0x7f0a0213

    .line 34
    const-string v1, "method \'onClickivSync\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 36
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    .line 51
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->srlSync:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 52
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->chProgress:Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    .line 54
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity_ViewBinding;->view7f0a0213:Landroid/view/View;

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
