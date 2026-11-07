.class Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity$1;
.super Ljava/lang/Object;
.source "DecoderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;->requestCameraPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 109
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/DecoderActivity;

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
