.class public Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SmsRspSimpleActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

.field private view7f0a01d1:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    .line 31
    const-string v0, "field \'lvSmsRsp\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    const v2, 0x7f0a0294

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->lvSmsRsp:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    .line 32
    const-string v0, "field \'ivAddSmsRsp\' and method \'onAddSmsRsp\'"

    const v1, 0x7f0a01d1

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 33
    const-string v0, "field \'ivAddSmsRsp\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->ivAddSmsRsp:Landroid/widget/ImageView;

    .line 34
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity_ViewBinding;->view7f0a01d1:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    .line 50
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->lvSmsRsp:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    .line 51
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->ivAddSmsRsp:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity_ViewBinding;->view7f0a01d1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity_ViewBinding;->view7f0a01d1:Landroid/view/View;

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
