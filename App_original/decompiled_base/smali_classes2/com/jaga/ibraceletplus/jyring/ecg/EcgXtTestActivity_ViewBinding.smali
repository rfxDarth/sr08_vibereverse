.class public Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EcgXtTestActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;

.field private view7f0a04df:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;Landroid/view/View;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;

    .line 36
    const-string v0, "field \'svEcg1\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    const v2, 0x7f0a0404

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->svEcg1:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    .line 37
    const-string v0, "field \'bTest\'"

    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0076

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->bTest:Landroid/widget/Button;

    .line 38
    const-string v0, "field \'sbBaseCForder\'"

    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f0a0388

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->sbBaseCForder:Landroid/widget/SeekBar;

    .line 39
    const-string v0, "field \'sbBaseCFcuff\'"

    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f0a0387

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->sbBaseCFcuff:Landroid/widget/SeekBar;

    .line 40
    const-string v0, "field \'tvBaseCForder\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a045c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvBaseCForder:Landroid/widget/TextView;

    .line 41
    const-string v0, "field \'tvBaseCFcuff\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a045b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvBaseCFcuff:Landroid/widget/TextView;

    .line 42
    const-string v0, "field \'sAuto\'"

    const-class v1, Landroid/widget/Switch;

    const v2, 0x7f0a037a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->sAuto:Landroid/widget/Switch;

    .line 43
    const-string v0, "field \'tvReport\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04fa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvReport:Landroid/widget/TextView;

    .line 44
    const-string v0, "field \'pbTime\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a0321

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->pbTime:Landroid/widget/ProgressBar;

    .line 45
    const-string v0, "field \'tvCountDown\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0484

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvCountDown:Landroid/widget/TextView;

    .line 46
    const-string v0, "field \'tvHeart\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04b5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvHeart:Landroid/widget/TextView;

    .line 47
    const-string v0, "field \'tvFastBeatTimes\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvFastBeatTimes:Landroid/widget/TextView;

    .line 48
    const-string v0, "field \'tvSlowBeatTimes\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0510

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvSlowBeatTimes:Landroid/widget/TextView;

    .line 49
    const-string v0, "field \'tvBeatStopTimes\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a045e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvBeatStopTimes:Landroid/widget/TextView;

    .line 50
    const-string v0, "field \'tvVescTimes\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0544

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvVescTimes:Landroid/widget/TextView;

    .line 51
    const-string v0, "field \'tvPvcTimes\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04f5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvPvcTimes:Landroid/widget/TextView;

    .line 52
    const-string v0, "field \'ivBack\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01d5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->ivBack:Landroid/widget/ImageView;

    .line 53
    const-string v0, "field \'tvNewRecord\' and method \'onClickNewRecord\'"

    const v1, 0x7f0a04df

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 54
    const-string v2, "field \'tvNewRecord\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvNewRecord:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity_ViewBinding;->view7f0a04df:Landroid/view/View;

    .line 56
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity_ViewBinding$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity_ViewBinding;Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const-string v0, "field \'tvRecrodTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04f7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvRecrodTime:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;

    .line 72
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->svEcg1:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    .line 73
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->bTest:Landroid/widget/Button;

    .line 74
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->sbBaseCForder:Landroid/widget/SeekBar;

    .line 75
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->sbBaseCFcuff:Landroid/widget/SeekBar;

    .line 76
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvBaseCForder:Landroid/widget/TextView;

    .line 77
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvBaseCFcuff:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->sAuto:Landroid/widget/Switch;

    .line 79
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvReport:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->pbTime:Landroid/widget/ProgressBar;

    .line 81
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvCountDown:Landroid/widget/TextView;

    .line 82
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvHeart:Landroid/widget/TextView;

    .line 83
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvFastBeatTimes:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvSlowBeatTimes:Landroid/widget/TextView;

    .line 85
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvBeatStopTimes:Landroid/widget/TextView;

    .line 86
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvVescTimes:Landroid/widget/TextView;

    .line 87
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvPvcTimes:Landroid/widget/TextView;

    .line 88
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->ivBack:Landroid/widget/ImageView;

    .line 89
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvNewRecord:Landroid/widget/TextView;

    .line 90
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity;->tvRecrodTime:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity_ViewBinding;->view7f0a04df:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgXtTestActivity_ViewBinding;->view7f0a04df:Landroid/view/View;

    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
