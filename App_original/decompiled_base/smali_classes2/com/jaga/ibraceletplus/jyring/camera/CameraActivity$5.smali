.class Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$5;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->clickedExposure(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

.field final synthetic val$min_exposure:I


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 372
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$5;->val$min_exposure:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 376
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->TAG:Ljava/lang/String;

    const-string p3, "exposure seekbar onProgressChanged"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    move-result-object p1

    iget p3, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$5;->val$min_exposure:I

    add-int/2addr p3, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->setExposure(IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
