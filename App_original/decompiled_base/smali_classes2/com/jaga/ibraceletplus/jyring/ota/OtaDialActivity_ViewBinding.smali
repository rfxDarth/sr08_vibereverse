.class public Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding;
.super Ljava/lang/Object;
.source "OtaDialActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

.field private view7f0a006c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/view/View;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    .line 33
    const-string v0, "field \'tvDeviceVersion\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0493

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->tvDeviceVersion:Landroid/widget/TextView;

    .line 34
    const-string v0, "field \'tvServerVersion\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0505

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->tvServerVersion:Landroid/widget/TextView;

    .line 35
    const-string v0, "field \'tvMessage\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04d1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->tvMessage:Landroid/widget/TextView;

    .line 36
    const-string v0, "field \'pbOta\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a031c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->pbOta:Landroid/widget/ProgressBar;

    .line 37
    const-string v0, "field \'dial_img\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0136

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->dial_img:Landroid/widget/ImageView;

    .line 38
    const-string v0, "field \'bCheck\' and method \'OnClickbCheck\'"

    const v1, 0x7f0a006c

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 39
    const-string v0, "field \'bCheck\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bCheck:Landroid/widget/Button;

    .line 40
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding;->view7f0a006c:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    .line 56
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->tvDeviceVersion:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->tvServerVersion:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->tvMessage:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->pbOta:Landroid/widget/ProgressBar;

    .line 60
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->dial_img:Landroid/widget/ImageView;

    .line 61
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->bCheck:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding;->view7f0a006c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity_ViewBinding;->view7f0a006c:Landroid/view/View;

    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
