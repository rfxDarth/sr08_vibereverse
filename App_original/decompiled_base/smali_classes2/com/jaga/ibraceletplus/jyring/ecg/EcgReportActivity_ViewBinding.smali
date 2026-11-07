.class public Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EcgReportActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;


# direct methods
.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;

    .line 30
    const-string v0, "field \'tvHealthScore\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04b3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->tvHealthScore:Landroid/widget/TextView;

    .line 31
    const-string v0, "field \'sbHealthScore\'"

    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f0a038c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->sbHealthScore:Landroid/widget/SeekBar;

    .line 32
    const-string v0, "field \'tvHeartAvg\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04b6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->tvHeartAvg:Landroid/widget/TextView;

    .line 33
    const-string v0, "field \'tvHeartSymptom\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a04ba

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->tvHeartSymptom:Landroid/widget/TextView;

    .line 34
    const-string v0, "field \'llIndicator\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0265

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->llIndicator:Landroid/widget/LinearLayout;

    .line 35
    const-string v0, "field \'llHeart0\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0261

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->llHeart0:Landroid/widget/LinearLayout;

    .line 36
    const-string v0, "field \'llHeart1\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0262

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->llHeart1:Landroid/widget/LinearLayout;

    .line 37
    const-string v0, "field \'tvSuggest\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0526

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->tvSuggest:Landroid/widget/TextView;

    .line 38
    const-string v0, "field \'svEcg\'"

    const-class v1, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    const v2, 0x7f0a0402

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->svEcg:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    .line 39
    const-string v0, "field \'pbEcg\'"

    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a031a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->pbEcg:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity_ViewBinding;->target:Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;

    .line 49
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->tvHealthScore:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->sbHealthScore:Landroid/widget/SeekBar;

    .line 51
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->tvHeartAvg:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->tvHeartSymptom:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->llIndicator:Landroid/widget/LinearLayout;

    .line 54
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->llHeart0:Landroid/widget/LinearLayout;

    .line 55
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->llHeart1:Landroid/widget/LinearLayout;

    .line 56
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->tvSuggest:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->svEcg:Lcom/jaga/ibraceletplus/jyring/widget/MyEcgSurfaceView;

    .line 58
    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->pbEcg:Landroid/widget/ProgressBar;

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
