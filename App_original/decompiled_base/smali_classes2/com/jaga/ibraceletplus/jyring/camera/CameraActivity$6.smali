.class Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$6;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->clickedTrash(Landroid/view/View;)V
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

    .line 816
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/camera/CameraActivity;->updateGalleryIcon()V

    return-void
.end method
