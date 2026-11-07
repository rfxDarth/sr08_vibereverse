.class Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$4;
.super Ljava/lang/Object;
.source "RunRecordActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView$OnUnLockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 437
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setUnLocked(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 441
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$1100(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->setRun(Z)V

    .line 442
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->suvPause:Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/jaga/ibraceletplus/jyring/widget/SlideUnlockView;->setVisibility(I)V

    .line 443
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bResume:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 444
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->bStop:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method
