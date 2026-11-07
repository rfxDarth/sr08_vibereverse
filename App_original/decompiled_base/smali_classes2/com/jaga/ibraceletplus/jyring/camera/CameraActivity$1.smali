.class Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "jringCLOSE_CAMERA_BROADCAST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "jringDEVICE_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 214
    :cond_0
    const-string/jumbo p1, "type"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 215
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->takePicture()V

    return-void

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->access$002(Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;Z)Z

    .line 219
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->finish()V

    return-void
.end method
