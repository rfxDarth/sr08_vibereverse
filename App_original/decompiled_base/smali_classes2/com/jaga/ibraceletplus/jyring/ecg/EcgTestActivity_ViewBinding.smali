.class public Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EcgTestActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;Landroid/view/View;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;

    .line 32
    const-string v0, "field \'svEcg1\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    const v2, 0x7f0a0404

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->svEcg1:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    .line 33
    const-string v0, "field \'bTest\'"

    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0076

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->bTest:Landroid/widget/Button;

    .line 34
    const-string v0, "field \'sbBaseCForder\'"

    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f0a0388

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->sbBaseCForder:Landroid/widget/SeekBar;

    .line 35
    const-string v0, "field \'sbBaseCFcuff\'"

    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f0a0387

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->sbBaseCFcuff:Landroid/widget/SeekBar;

    .line 36
    const-string v0, "field \'tvBaseCForder\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a045c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->tvBaseCForder:Landroid/widget/TextView;

    .line 37
    const-string v0, "field \'tvBaseCFcuff\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a045b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->tvBaseCFcuff:Landroid/widget/TextView;

    .line 38
    const-string v0, "field \'sAuto\'"

    const-class v1, Landroid/widget/Switch;

    const v2, 0x7f0a037a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->sAuto:Landroid/widget/Switch;

    .line 39
    const-string v0, "field \'tvReport\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04fa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->tvReport:Landroid/widget/TextView;

    .line 40
    const-string v0, "field \'ivRipple\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a020b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->ivRipple:Landroid/widget/ImageView;

    .line 41
    const-string v0, "field \'tvHeart\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04b5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->tvHeart:Landroid/widget/TextView;

    .line 42
    const-string v0, "field \'pbTime\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a0321

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->pbTime:Landroid/widget/ProgressBar;

    .line 43
    const-string v0, "field \'tvCountDown\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0484

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->tvCountDown:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;

    .line 53
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->svEcg1:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    .line 54
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->bTest:Landroid/widget/Button;

    .line 55
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->sbBaseCForder:Landroid/widget/SeekBar;

    .line 56
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->sbBaseCFcuff:Landroid/widget/SeekBar;

    .line 57
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->tvBaseCForder:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->tvBaseCFcuff:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->sAuto:Landroid/widget/Switch;

    .line 60
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->tvReport:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->ivRipple:Landroid/widget/ImageView;

    .line 62
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->tvHeart:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->pbTime:Landroid/widget/ProgressBar;

    .line 64
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgTestActivity;->tvCountDown:Landroid/widget/TextView;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
